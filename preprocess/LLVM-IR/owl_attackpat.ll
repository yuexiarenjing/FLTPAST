; ModuleID = 'owl_attackpat.c'
source_filename = "owl_attackpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type { [80 x i8], i32, %struct.state_rt*, %struct.attrib_rt* }
%struct.state_rt = type { i16, [4 x i16] }
%struct.attrib_rt = type { i16, i16 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }

@owl_attackpat = internal global [326 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat0, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 2, i32 3, i32 4, i32 2, i32 683, [8 x i32] [i32 -33554433, i32 -50529036, i32 -1024, i32 -193, i32 -50529040, i32 -768, i32 -129, i32 -50331649], [8 x i32] [i32 68812800, i32 1057824, i32 9453568, i32 1611661312, i32 605028352, i32 1704960, i32 1073184, i32 1083179008], i32 16777248, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat0, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat1, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 2, i32 683, [8 x i32] [i32 -33554433, i32 -9, i32 -772, i32 -193, i32 -16, i32 -513, i32 -129, i32 -50331649], [8 x i32] [i32 1572864, i32 1057280, i32 9437312, i32 537919488, i32 571473920, i32 1572872, i32 1056768, i32 9437184], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat2, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 646, [8 x i32] [i32 -251855620, i32 -50532352, i32 -49408, i32 1073741823, i32 -251855620, i32 -50532352, i32 -49408, i32 1073741823], [8 x i32] [i32 271056896, i32 2367488, i32 10555392, i32 543162384, i32 539230224, i32 2625536, i32 6299648, i32 278986752], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat3, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 943669055, i32 16578800, i32 -252661760, i32 -1073807360, i32 -117702656, i32 1061107712, i32 16760639, i32 -1326386960], [8 x i32] [i32 270532608, i32 2359296, i32 2101248, i32 6291456, i32 2359296, i32 2101248, i32 6291456, i32 270532608], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat4, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 2, i32 3, i32 4, i32 2, i32 721, [8 x i32] [i32 -50331649, i32 -50529040, i32 -256, i32 -1, i32 -50529028, i32 -1024, i32 -193, i32 -1], [8 x i32] [i32 1083187200, i32 613416960, i32 538576128, i32 1597536, i32 9446436, i32 546324480, i32 1612185600, i32 85598208], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat5, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 1, i32 3, i32 3, i32 2, i32 646, [8 x i32] [i32 -50529280, i32 -66560, i32 -50463444, i32 -50529200, i32 -50397420, i32 -50529056, i32 -50529280, i32 -33686528], [8 x i32] [i32 135790592, i32 17836032, i32 9469956, i32 -1609564160, i32 672137472, i32 1574976, i32 1089536, i32 -2138046464], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat6, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 647, [8 x i32] [i32 -50529028, i32 -50529280, i32 -1024, i32 -193, i32 -50529040, i32 -50529280, i32 -256, i32 -50331649], [8 x i32] [i32 68689920, i32 9446400, i32 546324480, i32 1612185600, i32 613416960, i32 538444800, i32 1597440, i32 1083187200], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat6, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat7, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 -3, i32 2, i32 2, i32 3, i32 5, i32 2, i32 647, [8 x i32] [i32 -134217729, i32 -50531076, i32 -33024, i32 2147483647, i32 -184746756, i32 -2304, i32 -32769, i32 2147483647], [8 x i32] [i32 304087040, i32 2359304, i32 2101248, i32 6291456, i32 2359296, i32 2101760, i32 6291584, i32 270532608], i32 16777216, float 9.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat8, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 1, i32 3, i32 3, i32 2, i32 683, [8 x i32] [i32 -50529280, i32 -197632, i32 -244, i32 -50529028, i32 -50528260, i32 -50529088, i32 -50529280, i32 -256], [8 x i32] [i32 69468160, i32 35656704, i32 6438920, i32 1344274464, i32 337642016, i32 2360448, i32 2117632, i32 1080164352], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat9, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 4, i32 3, i32 4, i32 2, i32 758, [8 x i32] [i32 1061109567, i32 16579836, i32 -252645376, i32 -65536, i32 -50593792, i32 1061109504, i32 16777215, i32 -252645136], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat10, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 646, [8 x i32] [i32 -185271296, i32 -50539520, i32 -58950656, i32 1560083456, i32 -721617920, i32 -51055616, i32 -50570240, i32 2088565760], [8 x i32] [i32 6291456, i32 270532608, i32 2359296, i32 2101248, i32 2101248, i32 6291456, i32 270532608, i32 2359296], i32 16777248, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat11, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 775896895, i32 16317688, i32 -252649472, i32 -4259840, i32 -50855936, i32 1061105152, i32 12582847, i32 -521080592], [8 x i32] [i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat11, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat12, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 -16777217, i32 -50529032, i32 -50529280, i32 -256, i32 -50529280, i32 -512, i32 -65, i32 -50529028], [8 x i32] [i32 1083219968, i32 -1534066688, i32 672662528, i32 1599488, i32 9479168, i32 -1601159168, i32 1746403328, i32 68691968], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat13, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 3, i32 4, i32 3, i32 2, i32 758, [8 x i32] [i32 255795007, i32 7405566, i32 -789528384, i32 -13172736, i32 -9437184, i32 524226318, i32 3670015, i32 -1057959696], [8 x i32] [i32 2097152, i32 2097408, i32 2097216, i32 2097152, i32 18874368, i32 2097156, i32 2097152, i32 2097152], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat14, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 647, [8 x i32] [i32 -251855620, i32 -50532352, i32 -49408, i32 1073741823, i32 -251855620, i32 -50532352, i32 -49408, i32 1073741823], [8 x i32] [i32 271056896, i32 2367488, i32 10555392, i32 543162384, i32 539230224, i32 2625536, i32 6299648, i32 278986752], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat14, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat15, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 -2, i32 -3, i32 1, i32 0, i32 3, i32 3, i32 8, i32 647, [8 x i32] [i32 -252657664, i32 -46202880, i32 255803191, i32 15793404, i32 4193791, i32 -1057951632, i32 -51380224, i32 1061097216], [8 x i32] [i32 1081344, i32 -2146304000, i32 135266336, i32 1050624, i32 1212416, i32 -2146435040, i32 135266304, i32 1050624], i32 16777216, float 9.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat16, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 1, i32 3, i32 3, i32 8, i32 686, [8 x i32] [i32 16579836, i32 -252645376, i32 -65536, i32 1061109567, i32 -252645136, i32 -50593792, i32 1061109504, i32 16777215], [8 x i32] [i32 2097156, i32 2097152, i32 2097152, i32 18874368, i32 2097152, i32 2097152, i32 2097408, i32 2097216], i32 16777216, float 9.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat17, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 2, i32 648, [8 x i32] [i32 15793404, i32 -252657664, i32 -12648448, i32 255803199, i32 -1057951504, i32 -51380224, i32 1061097216, i32 4194303], [8 x i32] [i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat17, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat18, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 2, i32 3, i32 4, i32 2, i32 759, [8 x i32] [i32 -1, i32 -50529028, i32 -256, i32 -1, i32 -50529028, i32 -256, i32 -1, i32 -1], [8 x i32] [i32 1083451392, i32 613453824, i32 -1604713216, i32 404250720, i32 -1869601756, i32 680804352, i32 1612191744, i32 89825280], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat18, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat19, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 647, [8 x i32] [i32 -1057686528, i32 -51326976, i32 -8582144, i32 473758748, i32 -789513008, i32 -51068928, i32 -63169536, i32 209583872], [8 x i32] [i32 1075841024, i32 69238784, i32 -2145385472, i32 136331264, i32 -2145385472, i32 136331264, i32 1075841024, i32 69238784], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat20, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 685, [8 x i32] [i32 3210495, i32 -1057964032, i32 -13631488, i32 255790863, i32 -1057963840, i32 -63963136, i32 255790851, i32 3211263], [8 x i32] [i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat21, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 956103680, i32 -251856896, i32 -50548736, i32 -1124320256, i32 -117641216, i32 -50579456, i32 1023196160, i32 -1325597696], [8 x i32] [i32 278921216, i32 539230208, i32 2625536, i32 6299648, i32 2367488, i32 10489856, i32 543162368, i32 271056896], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat22, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 956103680, i32 -251856896, i32 -50548736, i32 -1124320256, i32 -117641216, i32 -50579456, i32 1023196160, i32 -1325597696], [8 x i32] [i32 278925312, i32 543424512, i32 271060992, i32 6561792, i32 6561792, i32 278925312, i32 543424512, i32 271060992], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat23, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 2, i32 722, [8 x i32] [i32 821624060, i32 -251863040, i32 -54775808, i32 805256960, i32 -520294400, i32 -50843648, i32 1073688320, i32 817691900], [8 x i32] [i32 277880832, i32 546570240, i32 538447872, i32 5775360, i32 9707520, i32 546312192, i32 542638080, i32 270016512], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat24, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 2, i32 722, [8 x i32] [i32 1023212796, i32 -251855872, i32 -50532352, i32 -49408, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855620], [8 x i32] [i32 76554240, i32 546309120, i32 538460160, i32 1075322880, i32 76554240, i32 546309120, i32 538460160, i32 1075322880], i32 16777216, float 7.800000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat25, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat26, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 16053488, i32 -252686336, i32 2139029504, i32 339689279, i32 1357967600, i32 -185335808, i32 1061098496, i32 8355647], [8 x i32] [i32 2097152, i32 2097152, i32 2162688, i32 2097168, i32 2097168, i32 2097152, i32 2097152, i32 2162688], i32 16777216, float 5.800000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat27, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 -3, i32 2, i32 2, i32 2, i32 5, i32 2, i32 648, [8 x i32] [i32 16119280, i32 -252686256, i32 2139029504, i32 339689279, i32 1357967600, i32 -168493056, i32 1061098516, i32 8355647], [8 x i32] [i32 2097152, i32 2097152, i32 2162688, i32 2097168, i32 2097168, i32 2097152, i32 2097152, i32 2162688], i32 16777216, float 7.800000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat27, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat28, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 -3, i32 2, i32 2, i32 2, i32 5, i32 2, i32 648, [8 x i32] [i32 16119280, i32 -252686256, i32 2139029504, i32 339689279, i32 1357967600, i32 -168493056, i32 1061098516, i32 8355647], [8 x i32] [i32 2097152, i32 2097152, i32 2162688, i32 2097168, i32 2097168, i32 2097152, i32 2097152, i32 2162688], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat28, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat29, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 2, i32 610, [8 x i32] [i32 -252665856, i32 -1128529920, i32 725565184, i32 16316668, i32 12369148, i32 -1594822656, i32 -117964800, i32 1061104384], [8 x i32] [i32 538968064, i32 2621440, i32 2105600, i32 10485824, i32 2621444, i32 2105344, i32 10485760, i32 555745280], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat30, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 2, i32 610, [8 x i32] [i32 -252665856, i32 -1128529920, i32 725565184, i32 16316668, i32 12369148, i32 -1594822656, i32 -117964800, i32 1061104384], [8 x i32] [i32 2097152, i32 2097152, i32 2097408, i32 2097216, i32 2097156, i32 2097152, i32 2097152, i32 18874368], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat31, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 981434112, i32 1358756088, i32 -185290752, i32 -1124330496, i32 -117682176, i32 2139044352, i32 352107708, i32 -1326124032], [8 x i32] [i32 270532608, i32 2359296, i32 2101248, i32 6291456, i32 2359296, i32 2101248, i32 6291456, i32 270532608], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat31, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat32, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 1014988544, i32 1358757104, i32 -185274368, i32 -50588672, i32 -50573312, i32 2139044864, i32 352123964, i32 -252382208], [8 x i32] [i32 337641472, i32 2360320, i32 2117632, i32 1080033280, i32 69468160, i32 2102272, i32 6307840, i32 1344274432], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat32, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat33, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 723, [8 x i32] [i32 3719103, i32 -2131697472, i32 -122683392, i32 792660480, i32 -521109504, i32 -1086849024, i32 171912975, i32 11598072], [8 x i32] [i32 1049088, i32 1048704, i32 1048576, i32 1048576, i32 1048576, i32 34603008, i32 1048584, i32 1048576], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat34, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 1, i32 721, [8 x i32] [i32 -33792, i32 2096954428, i32 -184747008, i32 -50531328, i32 -50562048, i32 2097151744, i32 -184746768, i32 -50531328], [8 x i32] [i32 9446400, i32 546324480, i32 1612185600, i32 68689920, i32 1083187200, i32 613416960, i32 538444800, i32 1597440], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat34, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat35, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 685, [8 x i32] [i32 759136255, i32 1090059508, i32 -185540608, i32 -4258048, i32 -50839552, i32 2134846720, i32 130023295, i32 -521079556], [8 x i32] [i32 68812800, i32 1057824, i32 9453568, i32 1611661312, i32 605028352, i32 1704960, i32 1073184, i32 1083179008], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat36, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 2, i32 722, [8 x i32] [i32 217906428, i32 -252642304, i32 -50544640, i32 -12632320, i32 -51318784, i32 -50590720, i32 1061158656, i32 -1057161988], [8 x i32] [i32 77856768, i32 538973184, i32 6832128, i32 1344282624, i32 337649664, i32 10748928, i32 538988544, i32 1080557568], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat37, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 2, i32 685, [8 x i32] [i32 217906428, i32 -252642304, i32 -50544640, i32 -12632320, i32 -51318784, i32 -50590720, i32 1061158656, i32 -1057161988], [8 x i32] [i32 77856768, i32 538973184, i32 6832128, i32 1344282624, i32 337649664, i32 10748928, i32 538988544, i32 1080557568], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat37, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat38, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 4194303, i32 -1057951504, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12648448, i32 255803199, i32 15793404], [8 x i32] [i32 1703936, i32 1056800, i32 9437184, i32 537919488, i32 537919488, i32 1703936, i32 1056800, i32 9437184], i32 16777216, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat39, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 4194303, i32 -1057951504, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12648448, i32 255803199, i32 15793404], [8 x i32] [i32 1703936, i32 1056800, i32 9437184, i32 537919488, i32 537919488, i32 1703936, i32 1056800, i32 9437184], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat39, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat40, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 16777215, i32 -252645136, i32 -50593792, i32 1061109504, i32 -252645376, i32 -65536, i32 1061109567, i32 16579836], [8 x i32] [i32 1703936, i32 1056800, i32 9437184, i32 537919488, i32 537919488, i32 1703936, i32 1056800, i32 9437184], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat40, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat41, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 685, [8 x i32] [i32 -1, i32 -50529028, i32 -50529280, i32 -256, i32 -50529280, i32 -256, i32 -1, i32 -50529028], [8 x i32] [i32 85590016, i32 1057828, i32 9453568, i32 1611661312, i32 605028352, i32 1705216, i32 1073248, i32 1083179008], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat42, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 722, [8 x i32] [i32 -50528260, i32 -50529088, i32 -50529280, i32 -256, i32 -50529280, i32 -197632, i32 -244, i32 -50529028], [8 x i32] [i32 1083187200, i32 613416960, i32 538444800, i32 1597440, i32 9446400, i32 546324480, i32 1612185600, i32 68689920], i32 16777232, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat42, i32 0, float 0x3FD1C6D1E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat43, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 394264320, i32 -789252868, i32 -51097600, i32 2088508416, i32 -185282560, i32 -8448256, i32 477920508, i32 1358232576], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat43, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat44, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 3, i32 3, i32 4, i32 2, i32 758, [8 x i32] [i32 394264320, i32 -789252868, i32 -51097600, i32 2088508416, i32 -185282560, i32 -8448256, i32 477920508, i32 1358232576], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat44, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat45, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 3, i32 3, i32 5, i32 2, i32 721, [8 x i32] [i32 -352321792, i32 -17040648, i32 -21320, i32 -1128465348, i32 -84148496, i32 -5448, i32 -54739780, i32 -1392509184], [8 x i32] [i32 1080066048, i32 -1809776640, i32 136709136, i32 2119712, i32 2200608, i32 -2141175792, i32 1478492160, i32 69601280], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat46, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 759, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat46, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat47, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 722, [8 x i32] [i32 16580607, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109519, i32 16579836], [8 x i32] [i32 5283840, i32 -1869611008, i32 672399360, i32 1579008, i32 9474048, i32 -1605369856, i32 404226048, i32 1320960], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat47, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat48, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 3997693, i32 -1057951552, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12845056, i32 255803149, i32 15793404], [8 x i32] [i32 1573376, i32 1056896, i32 9437184, i32 537919488, i32 537919488, i32 35127296, i32 1056776, i32 9437184], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat49, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 16580605, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109517, i32 16579836], [8 x i32] [i32 1573376, i32 1056896, i32 9437184, i32 537919488, i32 537919488, i32 35127296, i32 1056776, i32 9437184], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat49, i32 0, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat50, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 -167772416, i32 -50531084, i32 -230400, i32 2096954380, i32 -184746816, i32 -2816, i32 -50561924, i32 2096955136], [8 x i32] [i32 -1869602816, i32 680787968, i32 572004352, i32 5808136, i32 9709696, i32 546344960, i32 -1604845568, i32 404234752], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat50, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat51, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 4063103, i32 -1057951536, i32 -51380224, i32 1061096704, i32 -252657664, i32 -12779520, i32 222248735, i32 15793396], [8 x i32] [i32 1081376, i32 -2146435072, i32 135266304, i32 1181696, i32 1081344, i32 -2146435072, i32 135397376, i32 1050656], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat51, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat52, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 2, i32 647, [8 x i32] [i32 15790080, i32 -252706816, i32 1061093376, i32 3947580, i32 15790320, i32 -252706816, i32 1010565120, i32 4144896], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat52, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat53, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 1, i32 2, i32 4, i32 2, i32 647, [8 x i32] [i32 -251855872, i32 -50532352, i32 -49920, i32 1023212668, i32 -251855628, i32 -50532352, i32 -50578432, i32 1040187136], [8 x i32] [i32 270016512, i32 9707520, i32 546312192, i32 542638080, i32 546570240, i32 538447872, i32 5775360, i32 277880832], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat53, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat54, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 2, i32 647, [8 x i32] [i32 1089531904, i32 -185597952, i32 1061094656, i32 3964028, i32 15791348, i32 -252690432, i32 2084306944, i32 88030976], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat54, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat55, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 2, i32 647, [8 x i32] [i32 1089531904, i32 -185597952, i32 1061094656, i32 3964028, i32 15791348, i32 -252690432, i32 2084306944, i32 88030976], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat55, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat56, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 2, i32 647, [8 x i32] [i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672, i32 15793152, i32 -252657664, i32 -63176704, i32 205274112], [8 x i32] [i32 -2146426880, i32 143654912, i32 537921536, i32 1605632, i32 9439232, i32 537952256, i32 -2145910784, i32 135274496], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat56, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat57, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 3735551, i32 -1057955648, i32 -55574528, i32 792661760, i32 -521093120, i32 -13107200, i32 255799055, i32 11599100], [8 x i32] [i32 1049088, i32 1048704, i32 1048576, i32 1048576, i32 1048576, i32 34603008, i32 1048584, i32 1048576], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat57, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat58, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 758, [8 x i32] [i32 255803136, i32 15793404, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061097216, i32 3996924, i32 -1057951744], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat59, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 686, [8 x i32] [i32 3996927, i32 -1057951744, i32 -51380224, i32 1061097216, i32 -252657664, i32 -63176704, i32 255803139, i32 15793404], [8 x i32] [i32 1343488, i32 -2146430976, i32 139460608, i32 269486080, i32 269516800, i32 -2146172928, i32 135270400, i32 5244928], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat59, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat60, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 686, [8 x i32] [i32 16580604, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109516, i32 16579836], [8 x i32] [i32 5243008, i32 269484032, i32 1310720, i32 1053184, i32 1052672, i32 5242880, i32 303038464, i32 1310728], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat61, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 1, i32 3, i32 1, i32 2, i32 722, [8 x i32] [i32 473709628, i32 16055296, i32 -252653568, i32 -8454144, i32 -51118080, i32 1010572288, i32 8388352, i32 -789516048], [8 x i32] [i32 136577024, i32 2103296, i32 6324224, i32 -1876951040, i32 404750336, i32 2361344, i32 2134016, i32 -2141192192], i32 16777216, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat62, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 2, i32 758, [8 x i32] [i32 1061158656, i32 -1057161988, i32 -51318784, i32 -50590720, i32 -50544640, i32 -12632320, i32 217906428, i32 -252642304], [8 x i32] [i32 689963008, i32 2623492, i32 2138112, i32 -2136997888, i32 136839168, i32 2107648, i32 10518592, i32 -1608515584], i32 16777216, float 7.700000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat63, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 1, i32 758, [8 x i32] [i32 524238623, i32 16055548, i32 -252653568, i32 -8585216, i32 -51118080, i32 1061101312, i32 8257535, i32 -789516080], [8 x i32] [i32 2105348, i32 10485760, i32 538968064, i32 19398656, i32 10485760, i32 538968064, i32 2621696, i32 2105408], i32 16777216, float 6.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat63, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat64, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 9601024, i32 -1609564128, i32 135790592, i32 1058816, i32 1089536, i32 -2137915392, i32 672137248, i32 1574912], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat64, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat65, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 648, [8 x i32] [i32 -1124205056, i32 -117638000, i32 -33753088, i32 -50545660, i32 -50530240, i32 -16925696, i32 -1124271080, i32 -117637888], [8 x i32] [i32 408946688, i32 270829568, i32 -2145087488, i32 -2006970368, i32 -2010902528, i32 140515328, i32 274761728, i32 -1876656128], i32 16777216, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat66, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 2, i32 686, [8 x i32] [i32 7700479, i32 1357959376, i32 -193724416, i32 524228352, i32 -789557248, i32 2138374144, i32 390012703, i32 7664892], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat67, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 721, [8 x i32] [i32 1061097216, i32 3996924, i32 -1057951744, i32 -51380224, i32 -63176704, i32 255803136, i32 15793404, i32 -252657664], [8 x i32] [i32 270532608, i32 2359296, i32 2101248, i32 6291456, i32 2359296, i32 2101248, i32 6291456, i32 270532608], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat67, i32 3, float 0x400CCCCCC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat68, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 721, [8 x i32] [i32 1061097216, i32 3996924, i32 -1057951744, i32 -51380224, i32 -63176704, i32 255803136, i32 15793404, i32 -252657664], [8 x i32] [i32 270532608, i32 2359296, i32 2101248, i32 6291456, i32 2359296, i32 2101248, i32 6291456, i32 270532608], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat68, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat69, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 0, i32 720, [8 x i32] [i32 1061097216, i32 3996924, i32 -1057951744, i32 -51380224, i32 -63176704, i32 255803136, i32 15793404, i32 -252657664], [8 x i32] [i32 270532608, i32 2359296, i32 2101248, i32 6291456, i32 2359296, i32 2101248, i32 6291456, i32 270532608], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat69, i32 3, float 0x3FA47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat70, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 757, [8 x i32] [i32 1061109504, i32 16579836, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061109504, i32 16579836, i32 -252645376], [8 x i32] [i32 1055232, i32 5275776, i32 -1877999616, i32 135528448, i32 -2142240768, i32 437256192, i32 1312776, i32 1085440], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat70, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat71, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 0, i32 757, [8 x i32] [i32 1061109504, i32 16579836, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061109504, i32 16579836, i32 -252645376], [8 x i32] [i32 1055232, i32 5275776, i32 -1877999616, i32 135528448, i32 -2142240768, i32 437256192, i32 1312776, i32 1085440], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat71, i32 0, float 0x40071EB860000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat72, i32 0, i32 0), i32 5, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 490684160, i32 16055540, i32 -252653568, i32 -58982400, i32 -51118080, i32 1061100800, i32 8191100, i32 -789516288], [8 x i32] [i32 136445952, i32 2099232, i32 2129920, i32 -2145386496, i32 136314880, i32 2230272, i32 2129952, i32 -2145386496], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat73, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 0, i32 3, i32 2, i32 0, i32 647, [8 x i32] [i32 -252657664, i32 -46333952, i32 255803157, i32 15793404, i32 4062717, i32 -1057951664, i32 -51380224, i32 1061097216], [8 x i32] [i32 1081344, i32 -2146435072, i32 152043520, i32 1050628, i32 1081408, i32 -2146435072, i32 135266304, i32 1050880], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat73, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat74, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 -2, i32 -3, i32 1, i32 1, i32 3, i32 4, i32 0, i32 647, [8 x i32] [i32 -117915648, i32 -46323712, i32 264224533, i32 -1594819332, i32 675151357, i32 -1057425328, i32 -51339264, i32 -1077997824], [8 x i32] [i32 1081344, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 1050624], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat74, i32 0, float 0x3FC35FC3C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat75, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 0, i32 3, i32 2, i32 0, i32 609, [8 x i32] [i32 -252645376, i32 -33751040, i32 1061109524, i32 16579836, i32 16645628, i32 -252645296, i32 -50593792, i32 1061109504], [8 x i32] [i32 1085440, i32 -2142240768, i32 403701760, i32 1312768, i32 5275648, i32 -1877999616, i32 135528448, i32 1054720], i32 16777216, float 8.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat75, i32 0, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat76, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 647, [8 x i32] [i32 -50529028, i32 -50529280, i32 -50529280, i32 -256, i32 -50529280, i32 -50529280, i32 -256, i32 -50529028], [8 x i32] [i32 1210056704, i32 69208064, i32 2130944, i32 -2145370112, i32 136315904, i32 2115584, i32 1075871744, i32 -2078277632], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat77, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 -2, i32 -3, i32 3, i32 0, i32 5, i32 3, i32 0, i32 610, [8 x i32] [i32 -252645328, i32 -131072, i32 1061109550, i32 16776444, i32 16711678, i32 -252645152, i32 -50397184, i32 1061109552], [8 x i32] [i32 2097152, i32 18874368, i32 2097156, i32 2097152, i32 2097408, i32 2097216, i32 2097152, i32 2097152], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat77, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat78, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 2, i32 3, i32 4, i32 0, i32 683, [8 x i32] [i32 -512, i32 -50463299, i32 -50332080, i32 -50529104, i32 -33686472, i32 -16777451, i32 -50529032, i32 -16778240], [8 x i32] [i32 1075938304, i32 -2078261232, i32 1210123264, i32 69224464, i32 1075872784, i32 -2078195712, i32 1210057744, i32 69289984], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat78, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat79, i32 0, i32 0), i32 5, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 1, i32 3, i32 2, i32 0, i32 683, [8 x i32] [i32 -50581504, i32 1040006400, i32 821886036, i32 -251858944, i32 1040006400, i32 821886036, i32 -251858944, i32 -50581504], [8 x i32] [i32 6561792, i32 278925312, i32 543424512, i32 271060992, i32 278925312, i32 543424512, i32 271060992, i32 6561792], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat79, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat80, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i32 -3, i32 -4, i32 1, i32 3, i32 4, i32 7, i32 0, i32 646, [8 x i32] [i32 -84901888, i32 -1086387702, i32 171884479, i32 -2131691288, i32 171949999, i32 -2131690758, i32 -118456192, i32 -1086453248], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat80, i32 3, float 0x3F9867F0A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat81, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 -3, i32 -4, i32 2, i32 2, i32 5, i32 6, i32 0, i32 646, [8 x i32] [i32 -84901760, i32 -1086387702, i32 171884479, i32 -2131690774, i32 171949999, i32 -2131690758, i32 -84901760, i32 -1086453238], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat81, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat82, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i32 -3, i32 -2, i32 0, i32 3, i32 3, i32 5, i32 0, i32 720, [8 x i32] [i32 -65536, i32 1061109567, i32 16776958, i32 -252645200, i32 1061109562, i32 16777215, i32 -252645136, i32 -16842752], [8 x i32] [i32 2097152, i32 2097152, i32 2162688, i32 2097168, i32 2097168, i32 2097152, i32 2097152, i32 2162688], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat82, i32 3, float 0x3FD75F6FE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat83, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 -4, i32 -3, i32 0, i32 3, i32 4, i32 6, i32 0, i32 682, [8 x i32] [i32 -17039360, i32 1061109514, i32 16580350, i32 -252645248, i32 1061109514, i32 16580350, i32 -252645248, i32 -17039360], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 8.200000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat83, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat84, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 -3, i32 -3, i32 0, i32 3, i32 3, i32 6, i32 0, i32 646, [8 x i32] [i32 -131072, i32 1061109551, i32 16711679, i32 -252645152, i32 1061109551, i32 16711679, i32 -252645152, i32 -131072], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat84, i32 3, float 0x3F979BFE00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat85, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 0, i32 647, [8 x i32] [i32 -252645376, i32 -50593792, i32 1061109248, i32 16579772, i32 16579832, i32 -252645376, i32 -50593792, i32 1044332288], [8 x i32] [i32 2101248, i32 6291456, i32 304087040, i32 2359304, i32 6291584, i32 270532608, i32 2359296, i32 2101760], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat85, i32 3, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat86, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 0, i32 647, [8 x i32] [i32 -251659008, i32 -50532240, i32 -50381824, i32 1023212592, i32 -251855824, i32 -33558528, i32 -50578380, i32 1023409152], [8 x i32] [i32 270663680, i32 2359328, i32 2101248, i32 6291456, i32 2359296, i32 2232320, i32 6291488, i32 270532608], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat87, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 722, [8 x i32] [i32 4194239, i32 -1057951504, i32 -51380224, i32 1061096960, i32 -252657664, i32 -12648448, i32 239025983, i32 15793400], [8 x i32] [i32 2179072, i32 1075838992, i32 69206016, i32 2098176, i32 2113536, i32 1075904512, i32 69206032, i32 2098176], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat87, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat88, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 647, [8 x i32] [i32 -50531328, i32 -50562048, i32 2147483392, i32 -184746756, i32 2096954620, i32 -184747008, i32 -50531328, i32 -33024], [8 x i32] [i32 68689920, i32 9446400, i32 563101696, i32 1612185604, i32 613417024, i32 538444800, i32 1597440, i32 1083187456], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat88, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat89, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 722, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2163200, i32 2097296, i32 2097152, i32 2097152, i32 2097152, i32 35717120, i32 2097176, i32 2097152], i32 16777216, float 6.800000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat89, i32 3, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat90, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 722, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2163200, i32 2097296, i32 2097152, i32 2097152, i32 2097152, i32 35717120, i32 2097176, i32 2097152], i32 16777216, float 6.800000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat90, i32 3, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat91, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 722, [8 x i32] [i32 1056964437, i32 -251855624, i32 -50532352, i32 -33735424, i32 -50532352, i32 -49664, i32 1040055741, i32 -251855788], [8 x i32] [i32 543232000, i32 275251216, i32 270802944, i32 10752000, i32 6819840, i32 274800640, i32 279183376, i32 539234304], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat91, i32 3, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat92, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 0, i32 3, i32 2, i32 0, i32 648, [8 x i32] [i32 1089532096, i32 -185597952, i32 1061094656, i32 3964799, i32 15791348, i32 -252690432, i32 2134638592, i32 88030991], [8 x i32] [i32 1048704, i32 1048576, i32 1048576, i32 1049089, i32 1048576, i32 1048576, i32 34603008, i32 1048585], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat92, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat93, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 3735320, i32 -1057955648, i32 -55574528, i32 775752704, i32 -521093120, i32 -13107200, i32 205336076, i32 11598992], [8 x i32] [i32 1081856, i32 -2146434944, i32 135266304, i32 1050624, i32 1081344, i32 -2112880640, i32 135266312, i32 1050624], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat93, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat94, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 3735320, i32 -1057955648, i32 -55574528, i32 775752704, i32 -521093120, i32 -13107200, i32 205336076, i32 11598992], [8 x i32] [i32 1081856, i32 -2146434944, i32 135266304, i32 1050624, i32 1081344, i32 -2112880640, i32 135266312, i32 1050624], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat94, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat95, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 758, [8 x i32] [i32 1061094144, i32 3947772, i32 15790080, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332, i32 -252706816], [8 x i32] [i32 538968320, i32 2621504, i32 2105344, i32 10485760, i32 2621440, i32 18882560, i32 10485764, i32 538968064], i32 16777216, float 6.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat95, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat96, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 758, [8 x i32] [i32 1061094144, i32 3947772, i32 15790080, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332, i32 -252706816], [8 x i32] [i32 538968320, i32 2621504, i32 2105344, i32 10485760, i32 2621440, i32 18882560, i32 10485764, i32 538968064], i32 16777216, float 6.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat96, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat97, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 15793404, i32 -252657664, i32 -12779520, i32 255803167, i32 -1057951536, i32 -51380224, i32 1061097216, i32 4063231], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat98, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 239025920, i32 15793400, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096960, i32 3996860, i32 -1057951744], [8 x i32] [i32 135406080, i32 9439392, i32 537952256, i32 -2145910784, i32 143654912, i32 571607040, i32 1605672, i32 -2146426880], i32 16777248, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat98, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat99, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 255803136, i32 15793404, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061097216, i32 3996924, i32 -1057951744], [8 x i32] [i32 169943552, i32 10487960, i32 539000832, i32 -2144862208, i32 144703488, i32 572590592, i32 2654360, i32 -2145378304], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat100, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 721, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2103296, i32 6324224, i32 -1876951040, i32 136577024, i32 -2141192192, i32 404750336, i32 2361344, i32 2134016], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat101, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 4194303, i32 -1057951504, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12648448, i32 255803199, i32 15793404], [8 x i32] [i32 1703936, i32 1056800, i32 9437184, i32 537919488, i32 537919488, i32 1703936, i32 1056800, i32 9437184], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat102, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 255803136, i32 15793404, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061097216, i32 3996924, i32 -1057951744], [8 x i32] [i32 168820736, i32 1050632, i32 1081344, i32 -2146435072, i32 135266304, i32 1051136, i32 1081472, i32 -2146435072], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat103, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 69337088, i32 2098208, i32 2113536, i32 1075838976, i32 69206016, i32 2229248, i32 2113568, i32 1075838976], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat104, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 685, [8 x i32] [i32 16056317, i32 -252653376, i32 -8519680, i32 524238639, i32 -789516064, i32 -786432, i32 1061101325, i32 8323071], [8 x i32] [i32 2097664, i32 2097280, i32 18874368, i32 2097156, i32 2097216, i32 35651584, i32 2097160, i32 2097408], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat105, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 1061100800, i32 8191100, i32 -789516288, i32 -51118080, i32 -58982400, i32 490684160, i32 16055540, i32 -252653568], [8 x i32] [i32 555876352, i32 2621476, i32 2105344, i32 10485760, i32 2621440, i32 2236672, i32 10485856, i32 538968064], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat105, i32 3, float 0x3FD99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat106, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 -256, i32 -50529028, i32 -256, i32 -50529028, i32 -50529028, i32 -256, i32 -50529028, i32 -256], [8 x i32] [i32 -1567604736, i32 1746403336, i32 68757504, i32 9479184, i32 1599504, i32 1083220480, i32 -1534066560, i32 672728064], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat107, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 4062717, i32 -1057951664, i32 -51380224, i32 1061097216, i32 -252657664, i32 -46333952, i32 255803157, i32 15793404], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat107, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat108, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 647, [8 x i32] [i32 -1057690624, i32 -55521280, i32 -276885760, i32 473496828, i32 -793707268, i32 -319504384, i32 -63431680, i32 260042496], [8 x i32] [i32 1075841024, i32 69238784, i32 -2145385472, i32 136331264, i32 -2145385472, i32 136331264, i32 1075841024, i32 69238784], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat109, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 4, i32 722, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat110, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 4, i32 685, [8 x i32] [i32 -117670660, i32 2096953344, i32 -184763392, i32 -1073744128, i32 -117670912, i32 2096953344, i32 -134234368, i32 -1124272900], [8 x i32] [i32 -1876425728, i32 136601600, i32 1084233728, i32 610304000, i32 1612974080, i32 69767168, i32 -2141182976, i32 413155328], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat110, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat111, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 1, i32 757, [8 x i32] [i32 1061096704, i32 3996796, i32 -1057951744, i32 -51380224, i32 -63176704, i32 222248704, i32 15793396, i32 -252657664], [8 x i32] [i32 270534656, i32 2392064, i32 -2145382400, i32 140509184, i32 -2145124352, i32 136318976, i32 6293504, i32 270565376], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat112, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 5, i32 721, [8 x i32] [i32 1010579456, i32 16563200, i32 -1326387200, i32 -117702656, i32 -1124335616, i32 943471616, i32 16578560, i32 -252661760], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat112, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat113, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 2, i32 1, i32 4, i32 2, i32 685, [8 x i32] [i32 16776960, i32 -252645136, i32 -33751040, i32 1010580500, i32 -252645296, i32 -65536, i32 1010580540, i32 16645376], [8 x i32] [i32 10551296, i32 538968080, i32 2621440, i32 2105344, i32 2105344, i32 10551296, i32 538968080, i32 2621440], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat113, i32 3, float 0x3FF0302B40000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat114, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 8257280, i32 -789516080, i32 -51118080, i32 1010572288, i32 -252653568, i32 -8585216, i32 473709596, i32 16055296], [8 x i32] [i32 2097408, i32 2097216, i32 2097152, i32 2097152, i32 2097152, i32 18874368, i32 2097156, i32 2097152], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat114, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat115, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 3, i32 1, i32 4, i32 2, i32 685, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 10485760, i32 538968064, i32 2621440, i32 2105344, i32 2105344, i32 10485760, i32 538968064, i32 2621440], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat116, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 10, i32 685, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 2162688, i32 2097168, i32 2097152, i32 2097152, i32 2097152, i32 2162688, i32 2097168, i32 2097152], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat117, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 2, i32 1, i32 4, i32 2, i32 685, [8 x i32] [i32 8388352, i32 -789516048, i32 -34144256, i32 1010572340, i32 -252653456, i32 -8454144, i32 473709628, i32 16252160], [8 x i32] [i32 2179072, i32 1075838992, i32 69337088, i32 2098208, i32 2113568, i32 1075904512, i32 69206032, i32 2229248], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat117, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat118, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 8190976, i32 -789516288, i32 -51118080, i32 1010572288, i32 -252653568, i32 -58982400, i32 473709568, i32 16055296], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 16777232, float 3.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat118, i32 3, float 0x3FF0189380000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat119, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 8190976, i32 -789516288, i32 -51118080, i32 1010572288, i32 -252653568, i32 -58982400, i32 473709568, i32 16055296], [8 x i32] [i32 2360320, i32 2117632, i32 1080033280, i32 337641472, i32 1344274432, i32 69468160, i32 2102272, i32 6307840], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat119, i32 3, float 0x3FF0189380000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat120, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 8190976, i32 -789516288, i32 -51118080, i32 1010572288, i32 -252653568, i32 -58982400, i32 473709568, i32 16055296], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat120, i32 3, float 0x3FD833C600000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat121, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat122, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 2, i32 648, [8 x i32] [i32 16576512, i32 -252694528, i32 1073676288, i32 809253948, i32 821096688, i32 -251920384, i32 1010577408, i32 16727808], [8 x i32] [i32 2359296, i32 2101248, i32 6422528, i32 270532640, i32 270532640, i32 2359296, i32 2101248, i32 6422528], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat122, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat123, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 889192192, i32 -251857680, i32 -50565120, i32 2096905216, i32 -184750080, i32 -52224, i32 1023179836, i32 1895627776], [8 x i32] [i32 279068672, i32 1612972064, i32 69734400, i32 6300672, i32 2383872, i32 1084362752, i32 610271264, i32 271057920], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat123, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat124, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 -1124073728, i32 -117637904, i32 -50530304, i32 -50545664, i32 -50530304, i32 -17408, i32 -1124271044, i32 -117638144], [8 x i32] [i32 409084160, i32 279185504, i32 539267072, i32 -2140663808, i32 144969728, i32 560076800, i32 275284004, i32 -1876680704], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat124, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat125, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796, i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568], [8 x i32] [i32 539230208, i32 2625536, i32 6300160, i32 278921344, i32 271056904, i32 2367488, i32 10489856, i32 576716800], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat125, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat126, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796, i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568], [8 x i32] [i32 -1876688896, i32 136581120, i32 39852544, i32 274759816, i32 270796936, i32 2396160, i32 -2141188096, i32 442499584], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat126, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat127, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 686, [8 x i32] [i32 16776444, i32 -252645328, i32 -50397184, i32 1061109552, i32 -252645328, i32 -50397184, i32 1061109552, i32 16776444], [8 x i32] [i32 11075584, i32 538976272, i32 11075584, i32 538976272, i32 538976272, i32 11075584, i32 538976272, i32 11075584], i32 16777232, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat127, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat128, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 4, i32 722, [8 x i32] [i32 -117670788, i32 2096953344, i32 -184763392, i32 -1073744640, i32 -117670912, i32 2096953344, i32 -167788800, i32 -1124272908], [8 x i32] [i32 -1876951040, i32 136577024, i32 2103296, i32 6324224, i32 2361344, i32 2134016, i32 -2141192192, i32 404750336], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat128, i32 3, float 0x3FF0302B40000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat129, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 2, i32 723, [8 x i32] [i32 1010777919, i32 16579824, i32 -252645376, i32 -65536, i32 -50593792, i32 1061108736, i32 16777023, i32 -252645136], [8 x i32] [i32 404889888, i32 10750048, i32 539004928, i32 -2140536832, i32 144965632, i32 555882496, i32 6979620, i32 -1876942816], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat129, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat130, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280], [8 x i32] [i32 -1533509632, i32 -1474812928, i32 144205824, i32 1620092928, i32 605595648, i32 -2137480192, i32 -1466933248, i32 1754793984], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat130, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat131, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 10, i32 685, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat132, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 -117638144, i32 -50530304, i32 -33571840, i32 -1124271052, i32 -117638032, i32 -50530304, i32 -50545664, i32 -1124074240], [8 x i32] [i32 -1876688896, i32 136581120, i32 6428672, i32 274759712, i32 270796832, i32 2396160, i32 -2141188096, i32 409075712], i32 16777216, float 7.900000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat132, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat133, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 0, i32 685, [8 x i32] [i32 -117638128, i32 -50530304, i32 -17408, i32 -1124205508, i32 -117637904, i32 -50530304, i32 -50480128, i32 -1124073712], [8 x i32] [i32 -1876687872, i32 136597504, i32 1080170496, i32 341868576, i32 1344538656, i32 69505024, i32 -2141187072, i32 409092096], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat133, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat134, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 3997501, i32 -1057951552, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12845056, i32 205471501, i32 15793392], [8 x i32] [i32 2638336, i32 1075847296, i32 77594624, i32 538969088, i32 538984448, i32 1109917696, i32 69214216, i32 10486784], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat135, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 1023409152, i32 -251855824, i32 -50532352, i32 -50578432, i32 -50532352, i32 -50381824, i32 1023212592, i32 -251855872], [8 x i32] [i32 409337856, i32 270800928, i32 6590464, i32 -1872752640, i32 405016576, i32 6690816, i32 274763808, i32 -1872494592], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat136, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 205458432, i32 3210288, i32 -1057964032, i32 -63963136, i32 -63963136, i32 205458432, i32 3210288, i32 -1057964032], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 16777216, float 6.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat136, i32 3, float 0x3FD99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat137, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 720, [8 x i32] [i32 205459200, i32 3210480, i32 -1057964032, i32 -63963136, i32 -63963136, i32 255790080, i32 3210300, i32 -1057964032], [8 x i32] [i32 2230272, i32 2129952, i32 -2145386496, i32 136314880, i32 -2145386496, i32 136445952, i32 2099232, i32 2129920], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat137, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat138, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 69339136, i32 2130976, i32 -2145370112, i32 1210056704, i32 -2078277632, i32 136446976, i32 2115616, i32 1075871744], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat138, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat139, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3963920, i32 1089531904, i32 -185597952, i32 1010631680, i32 -252690432, i32 2084306944, i32 71121920, i32 15791120], [8 x i32] [i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920], i32 16777248, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat139, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat140, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 524223488, i32 3439676, i32 1089523712, i32 -193986560, i32 2083782656, i32 71245568, i32 7402736, i32 -789561344], [8 x i32] [i32 136314880, i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920, i32 -2145386496], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat140, i32 3, float 0x3FF2F9DB20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat141, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3963920, i32 1089531904, i32 -185597952, i32 1010631680, i32 -252690432, i32 2084306944, i32 71121920, i32 15791120], [8 x i32] [i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat141, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat142, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 720, [8 x i32] [i32 1061101312, i32 8191228, i32 -789516288, i32 -51118080, i32 -58982400, i32 524238592, i32 16055548, i32 -252653568], [8 x i32] [i32 270535168, i32 2392192, i32 -2145382400, i32 140509184, i32 -2145124352, i32 169873408, i32 6293512, i32 270565376], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat143, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 686, [8 x i32] [i32 3997695, i32 -1057951552, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12845056, i32 255803151, i32 15793404], [8 x i32] [i32 2621954, i32 2105472, i32 10485760, i32 538968064, i32 538968064, i32 36175872, i32 2105354, i32 10485760], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat144, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 0, i32 723, [8 x i32] [i32 1010777885, i32 16579824, i32 -252645376, i32 -196608, i32 -50593792, i32 1061108736, i32 16645949, i32 -252645168], [8 x i32] [i32 337781248, i32 10749088, i32 538988544, i32 1080557568, i32 77856768, i32 572658688, i32 6832168, i32 1344282624], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat144, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_attackpat145, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 686, [8 x i32] [i32 3997693, i32 -1057951552, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12845056, i32 255803149, i32 15793404], [8 x i32] [i32 2638464, i32 1075847296, i32 77594624, i32 538969600, i32 538984448, i32 1109917696, i32 102768648, i32 10486792], i32 16777216, float 8.200000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat145, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat146, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 0, i32 647, [8 x i32] [i32 16577660, i32 -252678144, i32 2113667072, i32 926891268, i32 1894838336, i32 -184811520, i32 1027553024, i32 16547316], [8 x i32] [i32 2621476, i32 2105344, i32 10485760, i32 555876352, i32 538968064, i32 2621440, i32 2236672, i32 10485856], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat146, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat147, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 720, [8 x i32] [i32 1027546368, i32 8191092, i32 -789516288, i32 -51118080, i32 -58982400, i32 490683648, i32 16055412, i32 -252653568], [8 x i32] [i32 270665728, i32 2392096, i32 -2145382400, i32 140509184, i32 -2145124352, i32 136450048, i32 6293536, i32 270565376], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat147, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat148, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 0, i32 721, [8 x i32] [i32 822034176, i32 821883120, i32 -251908096, i32 1023160320, i32 -251908096, i32 1073688576, i32 821836860, i32 821882880], [8 x i32] [i32 9576960, i32 546308256, i32 538443776, i32 1581056, i32 9445376, i32 579993600, i32 538443816, i32 1581056], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat148, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_attackpat149, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 722, [8 x i32] [i32 7634804, i32 1357959360, i32 -193724416, i32 490673408, i32 -789557248, i32 2138308608, i32 356457740, i32 7664756], [8 x i32] [i32 2097440, i32 2097216, i32 2097152, i32 2228224, i32 2097152, i32 18874368, i32 2228228, i32 2097184], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat149, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_attackpat150, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 494927616, i32 -789250828, i32 -51064832, i32 -58975232, i32 -51064832, i32 -8446720, i32 477953148, i32 -789251072], [8 x i32] [i32 136478976, i32 -2145384352, i32 136347648, i32 -2145384448, i32 136347648, i32 -2128476160, i32 136347684, i32 -2145384448], i32 16777248, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat151, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 490684160, i32 16055540, i32 -252653568, i32 -58982400, i32 -51118080, i32 1061100800, i32 8191100, i32 -789516288], [8 x i32] [i32 136446208, i32 2099296, i32 2129920, i32 -2145386496, i32 136314880, i32 19007488, i32 2129956, i32 -2145386496], i32 16777248, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat152, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 1556086528, i32 -453706512, i32 -50801664, i32 -58954752, i32 -51059712, i32 -4236288, i32 1820130364, i32 -721880064], [8 x i32] [i32 135856128, i32 1058832, i32 9469952, i32 -1609564160, i32 672137216, i32 1640448, i32 1089552, i32 -2138046464], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat152, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat153, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 16579072, i32 -252661632, i32 -1124335616, i32 943471616, i32 -1326387200, i32 -84148224, i32 1010579464, i32 16563200], [8 x i32] [i32 2375680, i32 1075843072, i32 73400320, i32 270533632, i32 270548992, i32 1076101120, i32 69210112, i32 6292480], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat153, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat154, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 722, [8 x i32] [i32 1556086528, i32 -453706512, i32 -272640, i32 -58954500, i32 -51059460, i32 -4236288, i32 1820130364, i32 -671351040], [8 x i32] [i32 135856128, i32 1058832, i32 9470464, i32 -1609564032, i32 672137224, i32 1640448, i32 1089552, i32 -2104492032], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat155, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 -256, i32 -50529028, i32 -50529280, i32 -50529280, i32 -50529280, i32 -256, i32 -50529028, i32 -50529280], [8 x i32] [i32 1113587712, i32 337641480, i32 2360320, i32 2117632, i32 2102272, i32 6308352, i32 1344274560, i32 69468160], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat156, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 1023212544, i32 -251855872, i32 -50532352, i32 -50578432, i32 -50532352, i32 -50578432, i32 1023212544, i32 -251855872], [8 x i32] [i32 543166464, i32 275251200, i32 270802944, i32 10752000, i32 6819840, i32 274735104, i32 279183360, i32 539234304], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat157, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 10, i32 648, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 1647616, i32 9461776, i32 1620049920, i32 605552640, i32 1620049920, i32 605618176, i32 1582096, i32 9461760], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat158, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 685, [8 x i32] [i32 -50528512, i32 -50529088, i32 -256, i32 -50529028, i32 -50529028, i32 -197632, i32 -50529268, i32 -256], [8 x i32] [i32 -2078015488, i32 136320000, i32 23153152, i32 1344307348, i32 337643608, i32 2393088, i32 -2145366016, i32 1247871232], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat158, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat159, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 205458432, i32 3210288, i32 -1057964032, i32 -63963136, i32 -63963136, i32 205458432, i32 3210288, i32 -1057964032], [8 x i32] [i32 69337088, i32 2098208, i32 2113536, i32 1075838976, i32 69206016, i32 2229248, i32 2113568, i32 1075838976], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat159, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat160, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 1010777856, i32 16579824, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108736, i32 16579644, i32 -252645376], [8 x i32] [i32 136446464, i32 2099360, i32 2129920, i32 -2145386496, i32 136314880, i32 35784704, i32 2129960, i32 -2145386496], i32 16777232, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat160, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat161, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 648, [8 x i32] [i32 -1056964864, i32 -51318544, i32 -50590720, i32 1010629632, i32 -252642304, i32 -16384, i32 -63161284, i32 217906176], [8 x i32] [i32 -2140532224, i32 408952992, i32 279185408, i32 539267072, i32 543168512, i32 308969472, i32 -1876680664, i32 144969728], i32 16777232, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat162, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 9978880, i32 1611685888, i32 1150812160, i32 605037568, i32 1611685888, i32 1150812160, i32 605037568, i32 9978880], i32 16777232, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat162, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat163, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 9978880, i32 1611685888, i32 1150812160, i32 605037568, i32 1611685888, i32 1150812160, i32 605037568, i32 9978880], i32 16777232, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat163, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat164, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 722, [8 x i32] [i32 2097151744, i32 -184746768, i32 -50531328, i32 -50562048, i32 -50531328, i32 -33792, i32 2096954428, i32 -184747008], [8 x i32] [i32 672268288, i32 1574944, i32 1089536, i32 -2138046464, i32 135790592, i32 1189888, i32 9469984, i32 -1609564160], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat165, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 10, i32 648, [8 x i32] [i32 -251857920, i32 -50565120, i32 2096905216, i32 888994816, i32 1895627776, i32 -184750080, i32 -50580480, i32 1023179776], [8 x i32] [i32 1620574208, i32 605560832, i32 9970688, i32 546332672, i32 538452992, i32 9986048, i32 1620058112, i32 613941248], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat165, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat166, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 10, i32 648, [8 x i32] [i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280], [8 x i32] [i32 1217921024, i32 605038592, i32 9995264, i32 -1609539584, i32 672146432, i32 9979904, i32 1611702272, i32 -2070413312], i32 16777232, float 3.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat167, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.167, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 648, [8 x i32] [i32 -251855361, i32 -50532288, i32 -50578432, i32 1073741568, i32 -251855872, i32 -33755136, i32 -49401, i32 1023212796], [8 x i32] [i32 543688704, i32 271097856, i32 -2136727552, i32 681578496, i32 -1607987200, i32 141041664, i32 278931456, i32 547651584], i32 16777232, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat167, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat168, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 686, [8 x i32] [i32 -1057161985, i32 -51318784, i32 -50590720, i32 1061158656, i32 -252642304, i32 -50544640, i32 -12632317, i32 217906428], [8 x i32] [i32 -2140661694, i32 408985600, i32 -1868298240, i32 673485056, i32 -1604315136, i32 409501696, i32 -1859901438, i32 145002500], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat168, i32 3, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat169, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.169, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 10, i32 649, [8 x i32] [i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796], [8 x i32] [i32 543725584, i32 -1872191488, i32 -1734074368, i32 681908224, i32 -1603760128, i32 -1738006528, i32 413476864, i32 547657744], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat170, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 6, i32 685, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 11010048, i32 538976256, i32 11010048, i32 538976256, i32 538976256, i32 11010048, i32 538976256, i32 11010048], i32 16777232, float 2.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat170, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat171, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 6, i32 685, [8 x i32] [i32 16317440, i32 -252649472, i32 -4259840, i32 742145084, i32 -521080592, i32 -50855936, i32 1010576384, i32 12582656], [8 x i32] [i32 2097152, i32 2097152, i32 35782656, i32 2097192, i32 2097312, i32 2097152, i32 2097152, i32 2228736], i32 16777232, float 2.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat171, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat172, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.172, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 -117638144, i32 -50530304, i32 -16640, i32 -1124270852, i32 -117637892, i32 -50530304, i32 -50545664, i32 -1073742080], [8 x i32] [i32 -1876688896, i32 136581120, i32 6428928, i32 274759776, i32 270796836, i32 2396160, i32 -2141188096, i32 425852928], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat173, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 10649600, i32 -1608515552, i32 136839168, i32 2107392, i32 2138112, i32 -2136866816, i32 673185824, i32 2623488], i32 16777232, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat173, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat174, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 10649600, i32 -1608515552, i32 136839168, i32 2107392, i32 2138112, i32 -2136866816, i32 673185824, i32 2623488], i32 16777232, float 2.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat174, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat175, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 648, [8 x i32] [i32 16449279, i32 -252649312, i32 -4259840, i32 792674111, i32 -521080592, i32 -17170432, i32 1061105451, i32 12582911], [8 x i32] [i32 2099200, i32 2129920, i32 -2145255424, i32 136314912, i32 -2145386464, i32 136314880, i32 2099200, i32 2260992], i32 16777232, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat175, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat176, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 234880768, i32 -252642060, i32 -50544640, i32 -63161344, i32 -51318784, i32 -62208, i32 1010629756, i32 -1057162240], [8 x i32] [i32 144834560, i32 538970144, i32 2654208, i32 -2145378304, i32 136323072, i32 10618880, i32 539000864, i32 -2144862208], i32 16777232, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat177, i32 0, i32 0), i32 5, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 0, i32 648, [8 x i32] [i32 -1057948624, i32 -51331072, i32 -62977024, i32 205519920, i32 -1057948624, i32 -51331072, i32 -62977024, i32 205519920], [8 x i32] [i32 -2145384416, i32 136347648, i32 -2145253376, i32 136478752, i32 -2145384416, i32 136347648, i32 -2145253376, i32 136478752], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat178, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.178, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 0, i32 648, [8 x i32] [i32 -1057948672, i32 -51331072, i32 -62977024, i32 205323312, i32 -1057948624, i32 -51331072, i32 -63173632, i32 205519872], [8 x i32] [i32 -2145384448, i32 136347648, i32 -2145253376, i32 136347680, i32 -2145384416, i32 136347648, i32 -2145384448, i32 136478720], i32 16777232, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat179, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2361344, i32 2134016, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136577024, i32 2103296, i32 6324224], i32 16777248, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat179, i32 3, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat180, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2361344, i32 2134016, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136577024, i32 2103296, i32 6324224], i32 16777248, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat180, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat181, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.181, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 0, i32 610, [8 x i32] [i32 15790080, i32 -252706816, i32 1010761728, i32 3947568, i32 15790128, i32 -252706816, i32 1010565120, i32 4144128], [8 x i32] [i32 2134016, i32 -2141192192, i32 404750336, i32 2361344, i32 6324224, i32 -1876951040, i32 136577024, i32 2103296], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat181, i32 3, float 0x400947AE20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat182, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 0, i32 610, [8 x i32] [i32 15790080, i32 -252706816, i32 1010761728, i32 3947568, i32 15790128, i32 -252706816, i32 1010565120, i32 4144128], [8 x i32] [i32 2134016, i32 -2141192192, i32 404750336, i32 2361344, i32 6324224, i32 -1876951040, i32 136577024, i32 2103296], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat182, i32 3, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat183, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 647, [8 x i32] [i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672, i32 15793152, i32 -252657664, i32 -63176704, i32 205274112], [8 x i32] [i32 -2146426880, i32 143654912, i32 537921536, i32 1605632, i32 9439232, i32 537952256, i32 -2145910784, i32 135274496], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat183, i32 0, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat184, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.184, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 647, [8 x i32] [i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672, i32 15793152, i32 -252657664, i32 -63176704, i32 205274112], [8 x i32] [i32 -2146426880, i32 143654912, i32 537921536, i32 1605632, i32 9439232, i32 537952256, i32 -2145910784, i32 135274496], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat184, i32 0, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat185, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.185, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 16579632, i32 -252645376, i32 -50593792, i32 1010777088, i32 -252645376, i32 -50593792, i32 1010777088, i32 16579632], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat186, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.186, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 16579632, i32 -252645376, i32 -50593792, i32 1010777088, i32 -252645376, i32 -50593792, i32 1010777088, i32 16579632], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat186, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat187, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.187, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 -63963136, i32 205261824, i32 3210240, i32 -1057964032, i32 205261824, i32 3210240, i32 -1057964032, i32 -63963136], [8 x i32] [i32 -2012217344, i32 135268352, i32 1083392, i32 -2146402304, i32 135268352, i32 1083392, i32 -2146402304, i32 -2012217344], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat187, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat188, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 708787200, i32 16316472, i32 -252665856, i32 -1128529920, i32 -117964800, i32 1010772480, i32 12369072, i32 -1594822656], [8 x i32] [i32 2232320, i32 6291488, i32 270532608, i32 2359296, i32 6291456, i32 270663680, i32 2359328, i32 2101248], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat188, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat189, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 721, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 9568256, i32 537919520, i32 1572864, i32 1056768, i32 1056768, i32 9568256, i32 537919520, i32 1572864], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat189, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat190, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 2, i32 647, [8 x i32] [i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836, i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504], [8 x i32] [i32 270532608, i32 2359296, i32 2101760, i32 6291584, i32 2359304, i32 2101248, i32 6291456, i32 304087040], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat190, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat191, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 16544768, i32 1894805504, i32 1962672128, i32 876360704, i32 1894805504, i32 1962672128, i32 876360704, i32 16544768], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat191, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat192, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 0, i32 721, [8 x i32] [i32 -251675648, i32 -1124274128, i32 -117687296, i32 1023211520, i32 -251872256, i32 -1124077568, i32 -117687248, i32 1023211520], [8 x i32] [i32 -2141120512, i32 408977424, i32 -1876686848, i32 136613888, i32 -2141186048, i32 409042944, i32 -1876686832, i32 136613888], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat192, i32 3, float 0x3FF0189380000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat193, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 205470720, i32 15793200, i32 -252657664, i32 -63176704, i32 -51380224, i32 1010764800, i32 3996720, i32 -1057951744], [8 x i32] [i32 69214208, i32 10486784, i32 538984448, i32 1076363264, i32 77594624, i32 538969088, i32 2637824, i32 1075847168], i32 16777216, float 1.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat193, i32 3, float 0x40071EB860000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat194, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i32 0, i32 -4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 648, [8 x i32] [i32 16055296, i32 -252653568, i32 -8454144, i32 473709628, i32 -789516048, i32 -51118080, i32 1010572288, i32 8388352], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat194, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat195, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.195, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 758, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2105344, i32 10485760, i32 538968064, i32 2621440, i32 10485760, i32 538968064, i32 2621440, i32 2105344], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat195, i32 3, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat196, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 758, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2105344, i32 10485760, i32 538968064, i32 2621440, i32 10485760, i32 538968064, i32 2621440, i32 2105344], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat196, i32 3, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat197, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 7404544, i32 -789528576, i32 -29949952, i32 205265976, i32 -1057959760, i32 -59768832, i32 473697280, i32 3669504], [8 x i32] [i32 1050624, i32 1081344, i32 -2146304000, i32 135266336, i32 -2146435040, i32 135266304, i32 1050624, i32 1212416], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat197, i32 0, float 0x3FECDEA040000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat198, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.198, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 7404544, i32 -789528576, i32 -29949952, i32 205265976, i32 -1057959760, i32 -59768832, i32 473697280, i32 3669504], [8 x i32] [i32 1050624, i32 1081344, i32 -2146304000, i32 135266336, i32 -2146435040, i32 135266304, i32 1050624, i32 1212416], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat198, i32 0, float 0x3FECDEA040000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat199, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.199, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 2, i32 1, i32 3, i32 0, i32 720, [8 x i32] [i32 -25231360, i32 473709624, i32 16055296, i32 -252653568, i32 1010572288, i32 8388096, i32 -789516112, i32 -51118080], [8 x i32] [i32 -2145255424, i32 136314912, i32 2099200, i32 2129920, i32 2099200, i32 2260992, i32 -2145386464, i32 136314880], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat199, i32 3, float 0x3FF5DB22E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat200, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144958, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144958, i32 15790320], [8 x i32] [i32 1179680, i32 1048608, i32 1048576, i32 1179648, i32 1048576, i32 1179648, i32 1179680, i32 1048608], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat201, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 722, [8 x i32] [i32 994000640, i32 16578812, i32 -252661760, i32 -1124335616, i32 -117702656, i32 1061108480, i32 16563452, i32 -1326387200], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat201, i32 3, float 0x4003B15B60000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat202, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i32 -3, i32 -1, i32 1, i32 3, i32 4, i32 4, i32 0, i32 648, [8 x i32] [i32 -256, i32 -1, i32 -50529028, i32 -50529280, i32 -256, i32 -1, i32 -50529028, i32 -50529280], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat202, i32 3, float 0x3F99578A20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat203, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 722, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 2359320, i32 2101248, i32 6291456, i32 304152576, i32 270532608, i32 2359296, i32 2167296, i32 6291600], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat203, i32 3, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat204, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.204, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061096448, i32 3996732, i32 -1057951744, i32 -51380224, i32 -63176704, i32 205471488, i32 15793392, i32 -252657664], [8 x i32] [i32 1116160, i32 1081360, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135331840, i32 1050640, i32 1081344], i32 16777216, float 9.300000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat204, i32 0, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat205, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.205, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061096448, i32 3996732, i32 -1057951744, i32 -51380224, i32 -63176704, i32 205471488, i32 15793392, i32 -252657664], [8 x i32] [i32 1116160, i32 1081360, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135331840, i32 1050640, i32 1081344], i32 16777216, float 9.400000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat205, i32 0, float 0x3FFD0E5600000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat206, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.206, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 -63963136, i32 205261824, i32 3210240, i32 -1057964032, i32 205261824, i32 3210240, i32 -1057964032, i32 -63963136], [8 x i32] [i32 1142947840, i32 69207040, i32 2114560, i32 1075855360, i32 69207040, i32 2114560, i32 1075855360, i32 1142947840], i32 16777216, float 8.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat206, i32 3, float 0x3FF28F5C20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat207, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.207, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061096448, i32 3996732, i32 -1057951744, i32 -51380224, i32 -63176704, i32 205471488, i32 15793392, i32 -252657664], [8 x i32] [i32 34670592, i32 1081368, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135332352, i32 1050768, i32 1081344], i32 16777216, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat207, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat208, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.208, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280], [8 x i32] [i32 1687158784, i32 605553664, i32 1598464, i32 1083203584, i32 68690944, i32 9462784, i32 1620066304, i32 1679294464], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat208, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat209, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 -50561924, i32 2096954368, i32 -184747008, i32 -2816, i32 -50562048, i32 2096954368, i32 -167772416, i32 -50531084], [8 x i32] [i32 1083188224, i32 613433344, i32 1612186624, i32 68706304, i32 1083188224, i32 613433344, i32 1612186624, i32 68706304], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat209, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat210, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 758, [8 x i32] [i32 -50364577, i32 2096954608, i32 -184747008, i32 -133888, i32 -50562048, i32 2147482624, i32 -167903425, i32 -50531116], [8 x i32] [i32 1352147968, i32 613703680, i32 1620579328, i32 609771520, i32 1620321280, i32 613961728, i32 1616389120, i32 345530368], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat210, i32 0, float 0x3FFF5C2900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat211, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 16777216, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat211, i32 0, float 0x3FF28F5C20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat212, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.212, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 1, i32 3, i32 1, i32 0, i32 683, [8 x i32] [i32 1010580480, i32 16579584, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010580480, i32 16579584, i32 -252645376], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 16777216, float 9.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat212, i32 0, float 0x3FE535A860000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat213, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 720, [8 x i32] [i32 1010580480, i32 16579584, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010580480, i32 16579584, i32 -252645376], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat213, i32 0, float 0x3FE535A860000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat214, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 648, [8 x i32] [i32 3996672, i32 -1057951744, i32 -51380224, i32 1010568192, i32 -252657664, i32 -63176704, i32 205274112, i32 15793152], [8 x i32] [i32 2365440, i32 6328320, i32 -1872756736, i32 405012480, i32 -1872756736, i32 405012480, i32 2365440, i32 6328320], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat214, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat215, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 2, i32 3, i32 4, i32 2, i32 685, [8 x i32] [i32 -788856833, i32 -51060512, i32 -4449280, i32 796917519, i32 -520815424, i32 -339968, i32 -8442065, i32 482148351], [8 x i32] [i32 -2141192192, i32 404750336, i32 19138560, i32 2134020, i32 2103360, i32 6324224, i32 -1876951040, i32 136577280], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat215, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat216, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.216, i32 0, i32 0), i32 0, i32 -3, i32 1, i32 2, i32 1, i32 5, i32 2, i32 648, [8 x i32] [i32 16579072, i32 -252661632, i32 -1073807360, i32 943471676, i32 -1326386960, i32 -84148224, i32 1010579464, i32 16760576], [8 x i32] [i32 2363392, i32 6295552, i32 274726912, i32 270794752, i32 274726912, i32 270794752, i32 2363392, i32 6295552], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat217, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 647, [8 x i32] [i32 -193, i32 -131073, i32 -50331684, i32 -784, i32 -131268, i32 -33, i32 -50331649, i32 -784], [8 x i32] [i32 1746404352, i32 68708352, i32 1083220992, i32 -1534050304, i32 1746404352, i32 68708352, i32 1083220992, i32 -1534050304], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat218, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 720, [8 x i32] [i32 -256, i32 -50529028, i32 -50529280, i32 -50529280, i32 -50529280, i32 -256, i32 -50529028, i32 -50529280], [8 x i32] [i32 -2121269248, i32 672137220, i32 1574912, i32 1089536, i32 1058816, i32 9470208, i32 -1609564096, i32 135790592], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat218, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat219, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 0, i32 646, [8 x i32] [i32 -50531328, i32 -33024, i32 2147482877, i32 -184746948, i32 2147483633, i32 -184746756, i32 -50531328, i32 -50364672], [8 x i32] [i32 1048576, i32 34668544, i32 1114136, i32 1048592, i32 1114640, i32 1048720, i32 1048576, i32 1114112], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat219, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat220, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.220, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 0, i32 683, [8 x i32] [i32 -50531328, i32 -33587456, i32 2147482869, i32 -184746948, i32 2147483121, i32 -184746884, i32 -50531328, i32 -50364672], [8 x i32] [i32 -2146435072, i32 135331840, i32 1116176, i32 1081360, i32 1116176, i32 1081360, i32 -2146435072, i32 135331840], i32 16777216, float 8.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat220, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat221, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 685, [8 x i32] [i32 1598029821, i32 -990577412, i32 -51325952, i32 -8433920, i32 -51067904, i32 -12624128, i32 1333788669, i32 -722404100], [8 x i32] [i32 69813248, i32 1075864592, i32 1151352832, i32 1679819776, i32 1679835136, i32 1143538688, i32 69231632, i32 1084244992], i32 16777216, float 8.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat222, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.222, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 648, [8 x i32] [i32 821886036, i32 -251858944, i32 -50581504, i32 1040006400, i32 -251858944, i32 -50581504, i32 1040006400, i32 821886036], [8 x i32] [i32 543430656, i32 275288064, i32 -1872486400, i32 413405184, i32 -1872228352, i32 409214976, i32 279189504, i32 543461376], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat222, i32 3, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat223, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 -63176704, i32 205274112, i32 15793152, i32 -252657664, i32 1010568192, i32 3996672, i32 -1057951744, i32 -51380224], [8 x i32] [i32 -2078801920, i32 135275520, i32 9455616, i32 1611694080, i32 605030400, i32 1606656, i32 -2146410496, i32 1217396736], i32 16777248, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat223, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat224, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 -63176704, i32 205274112, i32 15793152, i32 -252657664, i32 1010568192, i32 3996672, i32 -1057951744, i32 -51380224], [8 x i32] [i32 -2078801920, i32 135275520, i32 9455616, i32 1611694080, i32 605030400, i32 1606656, i32 -2146410496, i32 1217396736], i32 16777248, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat224, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat225, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 -251855872, i32 -50532352, i32 -50578432, i32 1023212544, i32 -251855872, i32 -50532352, i32 -50578432, i32 1023212544], [8 x i32] [i32 -1872756736, i32 405012480, i32 2365440, i32 6328320, i32 2365440, i32 6328320, i32 -1872756736, i32 405012480], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat225, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat226, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.226, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 3944192, i32 11595968, i32 -521142272, i32 1010302976, i32 -256901120, i32 792461312, i32 3685388, i32 15785984], [8 x i32] [i32 2097664, i32 2097280, i32 2097152, i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097152], i32 16777248, float 3.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat226, i32 3, float 0x3FD067CF20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat227, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061096448, i32 3996732, i32 -1057951744, i32 -51380224, i32 -63176704, i32 205471488, i32 15793392, i32 -252657664], [8 x i32] [i32 287310848, i32 2375684, i32 1075843072, i32 73400320, i32 1076101120, i32 69210368, i32 6292544, i32 270548992], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat227, i32 3, float 0x3F964840E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat228, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.228, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 2097160, i32 2097152, i32 2097152, i32 35651584, i32 2097152, i32 2097152, i32 2097664, i32 2097280], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat228, i32 3, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat229, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.229, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 2097160, i32 2097152, i32 2097152, i32 35651584, i32 2097152, i32 2097152, i32 2097664, i32 2097280], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat229, i32 3, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat230, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 7404544, i32 -789528576, i32 -29949952, i32 205265976, i32 -1057959760, i32 -59768832, i32 473697280, i32 3669504], [8 x i32] [i32 1050624, i32 1081344, i32 -2146304000, i32 135266336, i32 -2146435040, i32 135266304, i32 1050624, i32 1212416], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat230, i32 0, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat231, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 7404544, i32 -789528576, i32 -29949952, i32 205265976, i32 -1057959760, i32 -59768832, i32 473697280, i32 3669504], [8 x i32] [i32 1050624, i32 1081344, i32 -2146304000, i32 135266336, i32 -2146435040, i32 135266304, i32 1050624, i32 1212416], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat231, i32 0, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat232, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat232, i32 0, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat233, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.233, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 16777216, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat233, i32 0, float 0x3FE55CFAA0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat234, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.234, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 0, i32 683, [8 x i32] [i32 -50447360, i32 1040055584, i32 -251855788, i32 -50532352, i32 -33735424, i32 1023343700, i32 -251855840, i32 -50532352], [8 x i32] [i32 1150820352, i32 613426176, i32 546849792, i32 1612210176, i32 613426176, i32 546849792, i32 1612210176, i32 1150820352], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat235, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.235, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 -63963136, i32 205261824, i32 3210240, i32 -1057964032, i32 205261824, i32 3210240, i32 -1057964032, i32 -63963136], [8 x i32] [i32 1142947840, i32 69207040, i32 2114560, i32 1075855360, i32 69207040, i32 2114560, i32 1075855360, i32 1142947840], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat235, i32 3, float 0x3FF28F5C20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat236, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 -63176704, i32 205274112, i32 15793152, i32 -252657664, i32 1010568192, i32 3996672, i32 -1057951744, i32 -51380224], [8 x i32] [i32 1210318848, i32 69212160, i32 6325248, i32 -1876934656, i32 404751360, i32 2377728, i32 1075875840, i32 -2074083328], i32 16777248, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat236, i32 3, float 0x3FF5E94AC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat237, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.237, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 -63176704, i32 205274112, i32 15793152, i32 -252657664, i32 1010568192, i32 3996672, i32 -1057951744, i32 -51380224], [8 x i32] [i32 1210318848, i32 69212160, i32 6325248, i32 -1876934656, i32 404751360, i32 2377728, i32 1075875840, i32 -2074083328], i32 16777248, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat237, i32 3, float 0x3FF5E94AC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat238, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.238, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 721, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 6457344, i32 -1876918240, i32 -2010906624, i32 136321024, i32 -2145349632, i32 -2006843392, i32 404752416, i32 2394112], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat238, i32 3, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat239, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 720, [8 x i32] [i32 2113929212, i32 -184746764, i32 -50531328, i32 -33024, i32 -50531328, i32 -33536, i32 2147483516, i32 -184746756], [8 x i32] [i32 279220288, i32 -1604055040, i32 409473024, i32 274999552, i32 275030016, i32 -1868296192, i32 694423552, i32 275257348], i32 16777216, float 8.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat239, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat240, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.240, i32 0, i32 0), i32 -2, i32 -3, i32 2, i32 1, i32 4, i32 4, i32 0, i32 610, [8 x i32] [i32 -184746784, i32 -68608, i32 -32977, i32 2097086463, i32 -184614913, i32 -50531104, i32 -99328, i32 2147483439], [8 x i32] [i32 270050304, i32 -2137759744, i32 1754271744, i32 609748992, i32 1620344832, i32 -1541926912, i32 139994112, i32 277899264], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat241, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.241, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 648, [8 x i32] [i32 3210240, i32 -1057964032, i32 -63963136, i32 205261824, i32 -1057964032, i32 -63963136, i32 205261824, i32 3210240], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat241, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat242, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 821821440, i32 809250816, i32 16527360, i32 821047296, i32 809250816, i32 16527360, i32 821047296, i32 821821440], [8 x i32] [i32 6553600, i32 270536704, i32 6553600, i32 270536704, i32 270536704, i32 6553600, i32 270536704, i32 6553600], i32 16777232, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat242, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat243, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.243, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 1, i32 1, i32 2, i32 0, i32 683, [8 x i32] [i32 821821440, i32 809250816, i32 16527360, i32 821047296, i32 809250816, i32 16527360, i32 821047296, i32 821821440], [8 x i32] [i32 6553600, i32 270536704, i32 6553600, i32 270536704, i32 270536704, i32 6553600, i32 270536704, i32 6553600], i32 16777232, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat243, i32 3, float 0x3FA16872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat244, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.244, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 683, [8 x i32] [i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816], [8 x i32] [i32 136577024, i32 2103296, i32 6324224, i32 -1876951040, i32 404750336, i32 2361344, i32 2134016, i32 -2141192192], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat244, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat245, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 683, [8 x i32] [i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816], [8 x i32] [i32 136577024, i32 2103296, i32 6324224, i32 -1876951040, i32 404750336, i32 2361344, i32 2134016, i32 -2141192192], i32 16777232, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat245, i32 3, float 0x3FE42A4540000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat246, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 0, i32 647, [8 x i32] [i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836, i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504], [8 x i32] [i32 539004928, i32 -2140667904, i32 404758528, i32 10749952, i32 6848512, i32 -1876942848, i32 144965632, i32 538974208], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat246, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat247, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 1, i32 3, i32 3, i32 2, i32 647, [8 x i32] [i32 -117638144, i32 -67072, i32 -16468, i32 -1124270852, i32 -83951620, i32 -50530072, i32 -50545664, i32 -1073742080], [8 x i32] [i32 2359296, i32 18878464, i32 6291972, i32 270532736, i32 270532872, i32 2359360, i32 2101248, i32 39845888], i32 16777216, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat248, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 758, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 6819840, i32 274735104, i32 279183360, i32 539234304, i32 543166464, i32 275251200, i32 270802944, i32 10752000], i32 16777216, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat248, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat249, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.249, i32 0, i32 0), i32 -2, i32 -2, i32 3, i32 3, i32 5, i32 5, i32 10, i32 723, [8 x i32] [i32 -352321537, i32 -329480, i32 -20689, i32 -1077936129, i32 -117768193, i32 -5408, i32 -4210753, i32 -1342177281], [8 x i32] [i32 1083482112, i32 -1534062592, i32 676856832, i32 270034944, i32 277914624, i32 -1600897024, i32 1746407424, i32 72886272], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat249, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat250, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 647, [8 x i32] [i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796, i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568], [8 x i32] [i32 539230208, i32 2625536, i32 6299648, i32 278921216, i32 271056896, i32 2367488, i32 10489856, i32 543162368], i32 16777232, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat251, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 648, [8 x i32] [i32 -252121088, i32 -50585600, i32 1069498112, i32 553450748, i32 553450748, i32 -252121088, i32 -50585600, i32 1069498112], [8 x i32] [i32 538968064, i32 2621440, i32 2236416, i32 10485792, i32 2621472, i32 2105344, i32 10485760, i32 539099136], i32 16777232, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat252, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.252, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 647, [8 x i32] [i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204, i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416], [8 x i32] [i32 539254784, i32 1084755968, i32 610410496, i32 279446560, i32 279461920, i32 1612980224, i32 78123008, i32 543302656], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat253, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.253, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 10, i32 685, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 2361344, i32 2134016, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136577024, i32 2103296, i32 6324224], i32 16777232, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat253, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat254, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 10, i32 685, [8 x i32] [i32 16580607, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109519, i32 16579836], [8 x i32] [i32 11010562, i32 538976384, i32 11010048, i32 538976256, i32 538976256, i32 44564480, i32 538976266, i32 11010048], i32 16777232, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat255, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.255, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 10, i32 685, [8 x i32] [i32 16580607, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109519, i32 16579836], [8 x i32] [i32 10486274, i32 538968192, i32 2621440, i32 2105344, i32 2105344, i32 44040192, i32 538968074, i32 2621440], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat256, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.256, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 10, i32 686, [8 x i32] [i32 16580607, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109519, i32 16579836], [8 x i32] [i32 11010562, i32 538976384, i32 11010048, i32 538976256, i32 538976256, i32 44564480, i32 538976266, i32 11010048], i32 16777232, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat257, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.257, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 722, [8 x i32] [i32 -587202816, i32 -51053328, i32 -50537472, i32 -58917888, i32 -51053568, i32 -9216, i32 -58917828, i32 -587400192], [8 x i32] [i32 -2011033088, i32 140511392, i32 270567424, i32 -2145091584, i32 140511232, i32 304252928, i32 -2145091544, i32 -2011164672], i32 16777232, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat258, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.258, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 685, [8 x i32] [i32 -788660480, i32 -51056432, i32 -50586624, i32 1014823936, i32 -252380160, i32 -143360, i32 -58967012, i32 486341632], [8 x i32] [i32 -2144861696, i32 136323200, i32 10487808, i32 539000832, i32 538970112, i32 36208640, i32 -2145378296, i32 144703488], i32 16777232, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat259, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.259, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 10, i32 685, [8 x i32] [i32 16252160, i32 -252653456, i32 -58982400, i32 473709568, i32 -789516288, i32 -34144256, i32 1010572340, i32 8190976], [8 x i32] [i32 2229248, i32 2113568, i32 1075838976, i32 69206016, i32 1075838976, i32 69337088, i32 2098208, i32 2113536], i32 16777232, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat259, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat260, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.260, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 10, i32 647, [8 x i32] [i32 16776448, i32 -252645264, i32 -50593792, i32 1010580480, i32 -252645376, i32 -33619968, i32 1010580532, i32 16579584], [8 x i32] [i32 2233344, i32 6307872, i32 1344274432, i32 69468160, i32 1080033280, i32 337772544, i32 2360352, i32 2117632], i32 16777232, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat261, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.261, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 648, [8 x i32] [i32 -587202816, i32 -51053328, i32 -50537472, i32 -58917888, i32 -51053568, i32 -9216, i32 -58917828, i32 -587400192], [8 x i32] [i32 -2011032064, i32 140527776, i32 1344309248, i32 -2077982720, i32 1214253056, i32 371361792, i32 -2145090520, i32 -2011148288], i32 16777232, float 3.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat262, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.262, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 722, [8 x i32] [i32 -50331904, i32 -50529040, i32 -50529280, i32 -50529280, i32 -50529280, i32 -1024, i32 -50529220, i32 -50529280], [8 x i32] [i32 680656896, i32 538445856, i32 1613824, i32 -2138038272, i32 135798784, i32 9578496, i32 546340896, i32 -1609039872], i32 16777232, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat263, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.263, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 10, i32 685, [8 x i32] [i32 -50331904, i32 -50529040, i32 -50529280, i32 -50529280, i32 -50529280, i32 -1024, i32 -50529220, i32 -50529280], [8 x i32] [i32 680656896, i32 538445856, i32 1613824, i32 -2138038272, i32 135798784, i32 9578496, i32 546340896, i32 -1609039872], i32 16777232, float 8.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat264, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.264, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 685, [8 x i32] [i32 -251854851, i32 -50532160, i32 -50578432, i32 1073741568, i32 -251855872, i32 -200704, i32 -49395, i32 1023212796], [8 x i32] [i32 1613234688, i32 69738624, i32 10494976, i32 547373056, i32 539493376, i32 36200448, i32 1084235784, i32 614465536], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat265, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.265, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 3, i32 3, i32 5, i32 10, i32 722, [8 x i32] [i32 243204095, i32 -789512984, i32 -539904, i32 -12640257, i32 -51326724, i32 -8516096, i32 524287919, i32 -1007157249], [8 x i32] [i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat266, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.266, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 648, [8 x i32] [i32 -251856896, i32 -50548736, i32 -1073791744, i32 956103804, i32 -1325597452, i32 -117641216, i32 -50579456, i32 1040170752], [8 x i32] [i32 539230208, i32 2625536, i32 6299648, i32 278921216, i32 271056896, i32 2367488, i32 10489856, i32 543162368], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat267, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.267, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 10, i32 721, [8 x i32] [i32 -50331904, i32 -16, i32 -50529028, i32 -50529280, i32 -256, i32 -772, i32 -50529220, i32 -50529280], [8 x i32] [i32 136380416, i32 2230544, i32 2130016, i32 -2145386496, i32 153223168, i32 2164772, i32 2129936, i32 -2145386496], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat268, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.268, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 10, i32 685, [8 x i32] [i32 16580607, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109519, i32 16579836], [8 x i32] [i32 2621958, i32 2105472, i32 10485760, i32 555745280, i32 538968064, i32 36175872, i32 2105610, i32 10485824], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat269, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.269, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 685, [8 x i32] [i32 -50331904, i32 -50529040, i32 -50529280, i32 -50529280, i32 -50529280, i32 -1024, i32 -50529220, i32 -50529280], [8 x i32] [i32 136904960, i32 2107472, i32 10518528, i32 -1608515584, i32 673185792, i32 19466240, i32 2138132, i32 -2136997888], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat269, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat270, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.270, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 647, [8 x i32] [i32 -50331904, i32 -50529040, i32 -50529280, i32 -50529280, i32 -50529280, i32 -1024, i32 -50529220, i32 -50529280], [8 x i32] [i32 136911104, i32 6334544, i32 -1868529664, i32 -1474035712, i32 -1470103552, i32 422119424, i32 2402324, i32 -2136961024], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat270, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat271, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.271, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 10, i32 610, [8 x i32] [i32 -252644100, i32 -50577408, i32 2134851328, i32 134217727, i32 1090321660, i32 -185536512, i32 -63744, i32 1061126143], [8 x i32] [i32 -1876942848, i32 144965632, i32 538974208, i32 6848512, i32 10749952, i32 539004928, i32 -2140667904, i32 404758528], i32 16777232, float 6.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat271, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat272, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.272, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 10, i32 685, [8 x i32] [i32 1061109567, i32 16579836, i32 -252645376, i32 -65536, i32 -50593792, i32 1061109504, i32 16777215, i32 -252645136], [8 x i32] [i32 152175104, i32 1050788, i32 1081344, i32 -2146435072, i32 135266304, i32 34736384, i32 1081448, i32 -2146435072], i32 16777232, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat273, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.273, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 10, i32 648, [8 x i32] [i32 -252644100, i32 -50577408, i32 2134851328, i32 134217727, i32 1090321660, i32 -185536512, i32 -63744, i32 1061126143], [8 x i32] [i32 -1876942848, i32 144965632, i32 572594176, i32 6848536, i32 10750096, i32 539004928, i32 -2140667904, i32 404824576], i32 16777232, float 6.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat273, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat274, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.274, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 10, i32 648, [8 x i32] [i32 -1057162240, i32 -51318784, i32 -50590720, i32 1010629632, i32 -252642304, i32 -50544640, i32 -63161344, i32 217906176], [8 x i32] [i32 -2140663808, i32 408952832, i32 279185408, i32 539267072, i32 543168512, i32 275283968, i32 -1876680704, i32 144969728], i32 16777232, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat275, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.275, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 10, i32 648, [8 x i32] [i32 -1057162240, i32 -51318784, i32 -50590720, i32 1010629632, i32 -252642304, i32 -50544640, i32 -63161344, i32 217906176], [8 x i32] [i32 -2144858112, i32 140517376, i32 278923264, i32 539262976, i32 543164416, i32 271089664, i32 -2145116160, i32 144707584], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat276, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.276, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 10, i32 648, [8 x i32] [i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836, i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504], [8 x i32] [i32 538968064, i32 2621440, i32 2105856, i32 10485888, i32 2621448, i32 2105344, i32 10485760, i32 572522496], i32 16777232, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat277, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.277, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 10, i32 649, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 10749960, i32 539004928, i32 -2140667904, i32 438312960, i32 -1876942848, i32 144965632, i32 538974720, i32 6848640], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat278, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.278, i32 0, i32 0), i32 -3, i32 -2, i32 2, i32 2, i32 5, i32 4, i32 10, i32 721, [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 69206016, i32 2163712, i32 2113552, i32 1075838976, i32 69271552, i32 2098192, i32 2113536, i32 1075838976], i32 16777216, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat279, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.279, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 6, i32 721, [8 x i32] [i32 -193, i32 -50529028, i32 -50529280, i32 -1024, i32 -50529280, i32 -256, i32 -50331649, i32 -50529040], [8 x i32] [i32 1411418144, i32 -2077981696, i32 -2011147264, i32 1214400512, i32 -2077981696, i32 -2011147264, i32 1214400512, i32 1411418144], i32 16777216, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat280, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.280, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 9, i32 757, [8 x i32] [i32 -128, i32 -1, i32 -1, i32 -50528514, i32 -1, i32 -1, i32 -16974596, i32 -246], [8 x i32] [i32 136385536, i32 6309904, i32 1344307200, i32 -2078015488, i32 1214251008, i32 337709056, i32 2393104, i32 -2145366016], i32 16777216, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat281, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.281, i32 0, i32 0), i32 -2, i32 -2, i32 3, i32 2, i32 5, i32 4, i32 9, i32 646, [8 x i32] [i32 -128, i32 -1, i32 -1, i32 -50528514, i32 -1, i32 -1, i32 -16974596, i32 -246], [8 x i32] [i32 153195520, i32 -2141173740, i32 1478524928, i32 -2078013440, i32 1214283776, i32 -1809774336, i32 136610896, i32 -2145363968], i32 16777232, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_attackpat282, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.282, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 10, i32 648, [8 x i32] [i32 -1062146860, i32 -323960832, i32 -281473792, i32 221900639, i32 -1062146860, i32 -323960832, i32 -281473792, i32 221900639], [8 x i32] [i32 -2145384448, i32 136347648, i32 -2145384448, i32 136347648, i32 -2145384448, i32 136347648, i32 -2145384448, i32 136347648], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat283, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.283, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 10, i32 648, [8 x i32] [i32 -1057950492, i32 -51363840, i32 2084310016, i32 88014592, i32 1089534976, i32 -185548800, i32 -12712704, i32 205290604], [8 x i32] [i32 -2141188032, i32 408944640, i32 270796800, i32 2396416, i32 6297600, i32 274759680, i32 -1859911680, i32 136581124], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat284, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.284, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 10, i32 647, [8 x i32] [i32 -251855636, i32 -50532352, i32 -50578432, i32 1073676032, i32 -251855872, i32 -50532352, i32 -114944, i32 1023212780], [8 x i32] [i32 -1607952316, i32 -2006409216, i32 -1734334464, i32 698648832, i32 -1603762176, i32 -1742168064, i32 -1985730304, i32 681613380], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat284, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat285, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.285, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 10, i32 646, [8 x i32] [i32 -251855872, i32 -50532352, i32 -50578432, i32 1023212544, i32 -251855872, i32 -50532352, i32 -50578432, i32 1023212544], [8 x i32] [i32 546849792, i32 1612210176, i32 1150820352, i32 613426176, i32 1612210176, i32 1150820352, i32 613426176, i32 546849792], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat285, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat286, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.286, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 10, i32 722, [8 x i32] [i32 7667709, i32 -789524288, i32 -59506688, i32 524230400, i32 -789524480, i32 -9175040, i32 524230413, i32 7666940], [8 x i32] [i32 2114080, i32 1075839104, i32 69206016, i32 2229248, i32 2113536, i32 1109393408, i32 69337096, i32 2098208], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat286, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_attackpat287, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.287, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 10, i32 683, [8 x i32] [i32 -256, i32 -4, i32 -50529028, i32 -50529280, i32 -256, i32 -4, i32 -50529028, i32 -50529280], [8 x i32] [i32 43385344, i32 571609768, i32 5767336, i32 269492224, i32 303178240, i32 43385512, i32 537923752, i32 5767168], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat287, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @owl_attackpat288, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.288, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 723, [8 x i32] [i32 -50331649, i32 -50529040, i32 -50529280, i32 -256, i32 -50529280, i32 -1024, i32 -193, i32 -50529028], [8 x i32] [i32 -1466788350, i32 -1470609248, i32 1478010880, i32 -2070632448, i32 1213769728, i32 -1768773632, i32 -1466661846, i32 -1474799616], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat289, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.289, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 610, [8 x i32] [i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796, i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568], [8 x i32] [i32 539268096, i32 -2140647424, i32 1482694656, i32 346294272, i32 1349025792, i32 -1809571840, i32 144970752, i32 543184896], i32 16777232, float 4.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat289, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat290, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.290, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 647, [8 x i32] [i32 -50331904, i32 -50529040, i32 -50529280, i32 -50529280, i32 -50529280, i32 -1024, i32 -50529220, i32 -50529280], [8 x i32] [i32 135864576, i32 9447504, i32 546340864, i32 -1609039872, i32 680525824, i32 555288576, i32 1613844, i32 -2138038272], i32 16777232, float 4.100000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat290, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat291, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.291, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 10, i32 649, [8 x i32] [i32 16777215, i32 -252645136, i32 -50593792, i32 1061109504, i32 -252645376, i32 -65536, i32 1061109567, i32 16579836], [8 x i32] [i32 11076132, i32 538976400, i32 11010048, i32 555884544, i32 538976256, i32 44630016, i32 539107608, i32 11010144], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat291, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @owl_attackpat292, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.292, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 686, [8 x i32] [i32 -184680453, i32 -50531120, i32 -50562048, i32 2130706176, i32 -184747008, i32 -134144, i32 -33249, i32 2096954556], [8 x i32] [i32 -1609001470, i32 -2007474048, i32 1485842432, i32 613713920, i32 1616414720, i32 -1776771072, i32 -2003557366, i32 680548352], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat293, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.293, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 10, i32 686, [8 x i32] [i32 1061109055, i32 16777086, i32 -252645136, i32 -65536, i32 -65536, i32 1027555134, i32 16777207, i32 -252645136], [8 x i32] [i32 421660678, i32 2459940, i32 -2145349552, i32 -1990197248, i32 -1994063872, i32 136452372, i32 6326626, i32 -1876918208], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat294, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.294, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 10, i32 722, [8 x i32] [i32 490683648, i32 16055412, i32 -252653568, i32 -58982400, i32 -51118080, i32 1027546368, i32 8191092, i32 -789516288], [8 x i32] [i32 136445952, i32 2099232, i32 2129920, i32 -2145386496, i32 136314880, i32 2230272, i32 2129952, i32 -2145386496], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat295, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 685, [8 x i32] [i32 -50462976, i32 -50529072, i32 -50529280, i32 -50529280, i32 -50529280, i32 -132096, i32 -50529252, i32 -50529280], [8 x i32] [i32 -2011692544, i32 135276672, i32 9472000, i32 -1609531392, i32 672139264, i32 35162112, i32 -2146394104, i32 -2003828736], i32 16777232, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat296, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.296, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 6, i32 759, [8 x i32] [i32 1061109567, i32 16580604, i32 -252645184, i32 -65536, i32 -262144, i32 1061109516, i32 16777215, i32 -252645136], [8 x i32] [i32 572530688, i32 11010568, i32 538976384, i32 11010048, i32 44564480, i32 538976776, i32 11010176, i32 538976256], i32 16777232, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat297, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.297, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 0, i32 4, i32 2, i32 8, i32 610, [8 x i32] [i32 -252645184, i32 -65536, i32 1061109567, i32 16580607, i32 16777215, i32 -252645136, i32 -262144, i32 1061109519], [8 x i32] [i32 539009088, i32 -2102853632, i32 673194008, i32 11012352, i32 11108864, i32 -1608507248, i32 162004992, i32 538978308], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat298, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.298, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 648, [8 x i32] [i32 1358754816, i32 -185307136, i32 2147423488, i32 880573564, i32 1895101684, i32 -184791040, i32 2088514560, i32 369065728], [8 x i32] [i32 2621440, i32 2105344, i32 10485760, i32 538968064, i32 538968064, i32 2621440, i32 2105344, i32 10485760], i32 16777232, float 4.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat299, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.299, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 16580352, i32 -252645184, i32 -50593792, i32 1010580480, i32 -252645376, i32 -262144, i32 1010580492, i32 16579584], [8 x i32] [i32 11043072, i32 -1608507328, i32 145227776, i32 538978304, i32 539009024, i32 -2119696384, i32 673193988, i32 11012096], i32 16777232, float 4.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_attackpat300, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.300, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 10, i32 647, [8 x i32] [i32 -50529280, i32 -50529280, i32 -256, i32 -50529028, i32 -50529028, i32 -50529280, i32 -50529280, i32 -256], [8 x i32] [i32 -2078014464, i32 136336384, i32 1080051712, i32 1411416064, i32 1411385344, i32 69501952, i32 -2145364992, i32 1214267392], i32 16777232, float 4.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat301, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.301, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 6, i32 722, [8 x i32] [i32 234716928, i32 1894841556, i32 -184762368, i32 -63163392, i32 -51351552, i32 2147290368, i32 876411996, i32 -1057164288], [8 x i32] [i32 144703488, i32 538970112, i32 2654208, i32 -2145378304, i32 136323072, i32 10487808, i32 539000832, i32 -2144862208], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat302, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.302, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 0, i32 3, i32 2, i32 10, i32 611, [8 x i32] [i32 1089532096, i32 -185597952, i32 1061094656, i32 3964799, i32 15791348, i32 -252690432, i32 2134638592, i32 88030991], [8 x i32] [i32 2105472, i32 10485760, i32 538968064, i32 2621953, i32 10485760, i32 538968064, i32 36175872, i32 2105353], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @owl_attackpat303, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.303, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 1, i32 3, i32 2, i32 10, i32 685, [8 x i32] [i32 -587400192, i32 -34079744, i32 -50537420, i32 -58917888, i32 -50856704, i32 -50537360, i32 -58917888, i32 -587400192], [8 x i32] [i32 1214810112, i32 -1809668096, i32 -2002484192, i32 -1474275328, i32 -1474128896, i32 -2006431712, i32 1478535168, i32 -2069592064], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat303, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat304, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.304, i32 0, i32 0), i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 6, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 4.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat305, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.305, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 1, i32 3, i32 3, i32 6, i32 648, [8 x i32] [i32 16579836, i32 -252645376, i32 -65536, i32 1061109566, i32 -252645136, i32 -50593792, i32 1061109504, i32 16777214], [8 x i32] [i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048608, i32 1048576, i32 1048576, i32 1179648], i32 16777216, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat306, i32 0, i32 0), i32 1, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.306, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 205258752, i32 3161088, i32 15777792, i32 -265289728, i32 1009778688, i32 3935232, i32 3207168, i32 -1058013184], [8 x i32] [i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat306, i32 3, float 0x3FADB22D00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_attackpat307, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.307, i32 0, i32 0), i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 721, [8 x i32] [i32 4128768, i32 3158064, i32 15728640, i32 808452096, i32 808452096, i32 4128768, i32 3158064, i32 15728640], [8 x i32] [i32 2162688, i32 2097168, i32 2097152, i32 2097152, i32 2097152, i32 2162688, i32 2097168, i32 2097152], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat307, i32 3, float 0x3FADB22D00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat308, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.308, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 1, i32 3, i32 2, i32 0, i32 683, [8 x i32] [i32 -50581504, i32 1073691648, i32 821886012, i32 -251858944, i32 1023360768, i32 821886192, i32 -251858944, i32 -50581504], [8 x i32] [i32 -2006708224, i32 425859072, i32 275023908, i32 -1876652032, i32 409082112, i32 275023968, i32 -1876652032, i32 -2006708224], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat308, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat309, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.309, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 1, i32 3, i32 2, i32 0, i32 683, [8 x i32] [i32 -50581504, i32 1073691648, i32 821886012, i32 -251858944, i32 1023360768, i32 821886192, i32 -251858944, i32 -50581504], [8 x i32] [i32 -2006708224, i32 425859072, i32 275023908, i32 -1876652032, i32 409082112, i32 275023968, i32 -1876652032, i32 -2006708224], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat309, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat310, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.310, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 611, [8 x i32] [i32 -256, i32 -50529028, i32 -256, i32 -50529028, i32 -50529028, i32 -256, i32 -50529028, i32 -256], [8 x i32] [i32 -1453193216, i32 405309476, i32 -2145081088, i32 -2002743232, i32 -2010638332, i32 140683520, i32 -1868527520, i32 -1457225728], i32 16777216, float 6.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat310, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat311, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.311, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 88030976, i32 15791348, i32 -252690432, i32 2084306944, i32 -185597952, i32 1061094656, i32 3964028, i32 1089531904], [8 x i32] [i32 2097664, i32 2097280, i32 2097152, i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097152], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat311, i32 3, float 0x3FFF5C2900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat312, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.312, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 610, [8 x i32] [i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204, i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416], [8 x i32] [i32 -1876656128, i32 -2010902528, i32 140515328, i32 274761728, i32 270829568, i32 -2145087488, i32 -2006970368, i32 408946688], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat312, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_attackpat313, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.313, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 610, [8 x i32] [i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204, i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416], [8 x i32] [i32 -1876680704, i32 144969728, i32 543168512, i32 275283968, i32 279185408, i32 539267072, i32 -2140663808, i32 408952832], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat313, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat314, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.314, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 648, [8 x i32] [i32 16580604, i32 -252645184, i32 -262144, i32 1061109519, i32 -252645184, i32 -262144, i32 1061109516, i32 16580607], [8 x i32] [i32 10750240, i32 539004992, i32 -2123890688, i32 404889604, i32 -1876942784, i32 161742848, i32 539105284, i32 6848800], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat314, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat315, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.315, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 648, [8 x i32] [i32 16580604, i32 -252645184, i32 -262144, i32 1061109519, i32 -252645184, i32 -262144, i32 1061109516, i32 16580607], [8 x i32] [i32 10750216, i32 539004992, i32 -2123890688, i32 438312964, i32 -1876942784, i32 161742848, i32 538974724, i32 6848896], i32 16777232, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat315, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat316, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.316, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 610, [8 x i32] [i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204, i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416], [8 x i32] [i32 -1876656128, i32 -2010902528, i32 140515840, i32 274761856, i32 270829576, i32 -2145087488, i32 -2006970368, i32 442501120], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat316, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat317, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.317, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 610, [8 x i32] [i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204, i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416], [8 x i32] [i32 -1876680704, i32 144969728, i32 543169024, i32 275284096, i32 279185416, i32 539267072, i32 -2140663808, i32 442507264], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat317, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat318, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.318, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 2, i32 647, [8 x i32] [i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796, i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568], [8 x i32] [i32 -1876655104, i32 -2010886144, i32 1214257664, i32 341870720, i32 1344571400, i32 -2077978624, i32 -2006969344, i32 442517504], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat319, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.319, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 723, [8 x i32] [i32 16580607, i32 -252645184, i32 -196608, i32 1061109535, i32 -252645168, i32 -262144, i32 1061109519, i32 16646143], [8 x i32] [i32 10750241, i32 539004992, i32 -2140667904, i32 404889600, i32 -1876942848, i32 161742848, i32 539105285, i32 6848544], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat320, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.320, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 2, i32 722, [8 x i32] [i32 -50331904, i32 -50529040, i32 -1024, i32 -50529220, i32 -50529040, i32 -1024, i32 -50529220, i32 -50331904], [8 x i32] [i32 1478656000, i32 -2078013408, i32 153195520, i32 -2141173740, i32 136610896, i32 -2145232896, i32 1214283808, i32 -1809774336], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_attackpat321, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.321, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 723, [8 x i32] [i32 16580607, i32 -252645184, i32 -65536, i32 1061109567, i32 -252645136, i32 -262144, i32 1061109519, i32 16777215], [8 x i32] [i32 11010432, i32 538976320, i32 44630016, i32 538976792, i32 538976400, i32 27787264, i32 572530692, i32 11076104], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat321, i32 3, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat322, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.322, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 3, i32 2, i32 5, i32 2, i32 686, [8 x i32] [i32 16646143, i32 -252645168, i32 -65536, i32 1061109567, i32 -252645136, i32 -196608, i32 1061109535, i32 16777215], [8 x i32] [i32 11010560, i32 538976384, i32 44630016, i32 538976280, i32 538976400, i32 44564480, i32 538976264, i32 11076096], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat322, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_attackpat323, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.323, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 2, i32 683, [8 x i32] [i32 1010777856, i32 16579824, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108736, i32 16579644, i32 -252645376], [8 x i32] [i32 136448000, i32 2132000, i32 -2145353728, i32 -2011168768, i32 -2011168768, i32 136448000, i32 2132000, i32 -2145353728], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_attackpat323, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_attackpat324, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.324, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 1023278848, i32 -251855664, i32 -50532352, i32 -50578432, i32 -50532352, i32 -181248, i32 1023212572, i32 -251855872], [8 x i32] [i32 680550912, i32 1620576384, i32 605593600, i32 -2137512960, i32 144203776, i32 1653614592, i32 613974024, i32 -1609030656], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern zeroinitializer], align 16
@dfa_owl_attackpat = internal global %struct.dfa_rt { [80 x i8] c"owl_attackpat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, %struct.state_rt* getelementptr inbounds ([24701 x %struct.state_rt], [24701 x %struct.state_rt]* @state_owl_attackpat, i32 0, i32 0), %struct.attrib_rt* getelementptr inbounds ([388 x %struct.attrib_rt], [388 x %struct.attrib_rt]* @idx_owl_attackpat, i32 0, i32 0) }, align 8
@owl_attackpat_db = dso_local global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([326 x %struct.pattern], [326 x %struct.pattern]* @owl_attackpat, i32 0, i32 0), %struct.dfa_rt* @dfa_owl_attackpat }, align 8
@owl_attackpat0 = internal global [3 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 757, i32 3 }], align 16
@.str = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@owl_attackpat1 = internal global [3 x %struct.patval] [%struct.patval { i32 719, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@owl_attackpat2 = internal global [2 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@owl_attackpat3 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"A101\00", align 1
@owl_attackpat4 = internal global [3 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 610, i32 1 }], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"A102\00", align 1
@owl_attackpat5 = internal global [4 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 610, i32 3 }], align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"A103\00", align 1
@owl_attackpat6 = internal global [2 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"A104\00", align 1
@owl_attackpat7 = internal global [3 x %struct.patval] [%struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 3 }], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"A105\00", align 1
@owl_attackpat8 = internal global [3 x %struct.patval] [%struct.patval { i32 645, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.8 = private unnamed_addr constant [5 x i8] c"A106\00", align 1
@owl_attackpat9 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"A107\00", align 1
@owl_attackpat10 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"A108\00", align 1
@owl_attackpat11 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"A109\00", align 1
@owl_attackpat12 = internal global [3 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"A110\00", align 1
@owl_attackpat13 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 3 }], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"A111\00", align 1
@owl_attackpat14 = internal global [2 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"A112\00", align 1
@owl_attackpat15 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 645, i32 3 }], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"A113\00", align 1
@owl_attackpat16 = internal global [2 x %struct.patval] [%struct.patval { i32 687, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"A114\00", align 1
@owl_attackpat17 = internal global [2 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"A115\00", align 1
@owl_attackpat18 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 610, i32 1 }], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"A201\00", align 1
@owl_attackpat19 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 610, i32 3 }], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"A203\00", align 1
@owl_attackpat20 = internal global [1 x %struct.patval] [%struct.patval { i32 722, i32 1 }], align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"A204\00", align 1
@owl_attackpat21 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"A205\00", align 1
@owl_attackpat22 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.22 = private unnamed_addr constant [6 x i8] c"A205b\00", align 1
@owl_attackpat23 = internal global [2 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"A206\00", align 1
@owl_attackpat24 = internal global [2 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"A206b\00", align 1
@owl_attackpat25 = internal global [1 x %struct.patval] [%struct.patval { i32 758, i32 1 }], align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"A207\00", align 1
@owl_attackpat26 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"A207b\00", align 1
@owl_attackpat27 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"A207c\00", align 1
@owl_attackpat28 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 574, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"A207d\00", align 1
@owl_attackpat29 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.29 = private unnamed_addr constant [6 x i8] c"A208a\00", align 1
@owl_attackpat30 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"A208b\00", align 1
@owl_attackpat31 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"A209\00", align 1
@owl_attackpat32 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 795, i32 3 }], align 16
@.str.32 = private unnamed_addr constant [5 x i8] c"A210\00", align 1
@owl_attackpat33 = internal global [1 x %struct.patval] [%struct.patval { i32 759, i32 1 }], align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"A211\00", align 1
@owl_attackpat34 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 3 }], align 16
@.str.34 = private unnamed_addr constant [5 x i8] c"A214\00", align 1
@owl_attackpat35 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"A215\00", align 1
@owl_attackpat36 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"A216\00", align 1
@owl_attackpat37 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.37 = private unnamed_addr constant [6 x i8] c"A216b\00", align 1
@owl_attackpat38 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"A217\00", align 1
@owl_attackpat39 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.39 = private unnamed_addr constant [6 x i8] c"A217b\00", align 1
@owl_attackpat40 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.40 = private unnamed_addr constant [6 x i8] c"A217c\00", align 1
@owl_attackpat41 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"A218\00", align 1
@owl_attackpat42 = internal global [2 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.42 = private unnamed_addr constant [5 x i8] c"A219\00", align 1
@owl_attackpat43 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"A220\00", align 1
@owl_attackpat44 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"A221\00", align 1
@owl_attackpat45 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 610, i32 1 }], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"A222\00", align 1
@owl_attackpat46 = internal global [1 x %struct.patval] [%struct.patval { i32 758, i32 1 }], align 4
@.str.46 = private unnamed_addr constant [5 x i8] c"A223\00", align 1
@owl_attackpat47 = internal global [2 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"A224\00", align 1
@owl_attackpat48 = internal global [3 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"A225\00", align 1
@owl_attackpat49 = internal global [3 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"A226\00", align 1
@owl_attackpat50 = internal global [6 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 720, i32 3 }], align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"A227\00", align 1
@owl_attackpat51 = internal global [4 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.51 = private unnamed_addr constant [6 x i8] c"A227b\00", align 1
@owl_attackpat52 = internal global [1 x %struct.patval] [%struct.patval { i32 685, i32 1 }], align 4
@.str.52 = private unnamed_addr constant [5 x i8] c"A228\00", align 1
@owl_attackpat53 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 572, i32 3 }, %struct.patval { i32 573, i32 3 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.53 = private unnamed_addr constant [5 x i8] c"A229\00", align 1
@owl_attackpat54 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 572, i32 3 }, %struct.patval { i32 646, i32 3 }], align 16
@.str.54 = private unnamed_addr constant [6 x i8] c"A229b\00", align 1
@owl_attackpat55 = internal global [3 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 646, i32 3 }], align 16
@.str.55 = private unnamed_addr constant [6 x i8] c"A229c\00", align 1
@owl_attackpat56 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.56 = private unnamed_addr constant [6 x i8] c"A229d\00", align 1
@owl_attackpat57 = internal global [1 x %struct.patval] [%struct.patval { i32 759, i32 1 }], align 4
@.str.57 = private unnamed_addr constant [5 x i8] c"A230\00", align 1
@owl_attackpat58 = internal global [1 x %struct.patval] [%struct.patval { i32 794, i32 1 }], align 4
@.str.58 = private unnamed_addr constant [5 x i8] c"A231\00", align 1
@owl_attackpat59 = internal global [1 x %struct.patval] [%struct.patval { i32 648, i32 1 }], align 4
@.str.59 = private unnamed_addr constant [5 x i8] c"A232\00", align 1
@owl_attackpat60 = internal global [1 x %struct.patval] [%struct.patval { i32 649, i32 1 }], align 4
@.str.60 = private unnamed_addr constant [5 x i8] c"A233\00", align 1
@owl_attackpat61 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.61 = private unnamed_addr constant [5 x i8] c"A234\00", align 1
@owl_attackpat62 = internal global [3 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.62 = private unnamed_addr constant [5 x i8] c"A235\00", align 1
@owl_attackpat63 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.63 = private unnamed_addr constant [5 x i8] c"A236\00", align 1
@owl_attackpat64 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.64 = private unnamed_addr constant [5 x i8] c"A301\00", align 1
@owl_attackpat65 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.65 = private unnamed_addr constant [5 x i8] c"A302\00", align 1
@owl_attackpat66 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.66 = private unnamed_addr constant [5 x i8] c"A305\00", align 1
@owl_attackpat67 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.67 = private unnamed_addr constant [5 x i8] c"A401\00", align 1
@owl_attackpat68 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.68 = private unnamed_addr constant [6 x i8] c"A401a\00", align 1
@owl_attackpat69 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"A402\00", align 1
@owl_attackpat70 = internal global [2 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.70 = private unnamed_addr constant [5 x i8] c"A403\00", align 1
@owl_attackpat71 = internal global [2 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.71 = private unnamed_addr constant [6 x i8] c"A403b\00", align 1
@owl_attackpat72 = internal global [5 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.72 = private unnamed_addr constant [5 x i8] c"A404\00", align 1
@owl_attackpat73 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 608, i32 3 }], align 16
@.str.73 = private unnamed_addr constant [5 x i8] c"A406\00", align 1
@owl_attackpat74 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 682, i32 3 }], align 16
@.str.74 = private unnamed_addr constant [6 x i8] c"A406b\00", align 1
@owl_attackpat75 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 682, i32 3 }], align 16
@.str.75 = private unnamed_addr constant [6 x i8] c"A406c\00", align 1
@owl_attackpat76 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.76 = private unnamed_addr constant [5 x i8] c"A407\00", align 1
@owl_attackpat77 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.77 = private unnamed_addr constant [5 x i8] c"A408\00", align 1
@owl_attackpat78 = internal global [5 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 719, i32 3 }], align 16
@.str.78 = private unnamed_addr constant [5 x i8] c"A409\00", align 1
@owl_attackpat79 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 682, i32 3 }], align 16
@.str.79 = private unnamed_addr constant [5 x i8] c"A410\00", align 1
@owl_attackpat80 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.80 = private unnamed_addr constant [5 x i8] c"A411\00", align 1
@owl_attackpat81 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.81 = private unnamed_addr constant [6 x i8] c"A411a\00", align 1
@owl_attackpat82 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.82 = private unnamed_addr constant [6 x i8] c"A413a\00", align 1
@owl_attackpat83 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 680, i32 3 }, %struct.patval { i32 717, i32 3 }, %struct.patval { i32 643, i32 3 }], align 16
@.str.83 = private unnamed_addr constant [5 x i8] c"A414\00", align 1
@owl_attackpat84 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.84 = private unnamed_addr constant [6 x i8] c"A414a\00", align 1
@owl_attackpat85 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 1 }], align 16
@.str.85 = private unnamed_addr constant [5 x i8] c"A415\00", align 1
@owl_attackpat86 = internal global [3 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.86 = private unnamed_addr constant [5 x i8] c"A416\00", align 1
@owl_attackpat87 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 687, i32 3 }, %struct.patval { i32 650, i32 3 }, %struct.patval { i32 724, i32 3 }, %struct.patval { i32 761, i32 3 }], align 16
@.str.87 = private unnamed_addr constant [5 x i8] c"A417\00", align 1
@owl_attackpat88 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.88 = private unnamed_addr constant [5 x i8] c"A418\00", align 1
@owl_attackpat89 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.89 = private unnamed_addr constant [5 x i8] c"A419\00", align 1
@owl_attackpat90 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.90 = private unnamed_addr constant [6 x i8] c"A419b\00", align 1
@owl_attackpat91 = internal global [6 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 723, i32 3 }], align 16
@.str.91 = private unnamed_addr constant [5 x i8] c"A420\00", align 1
@owl_attackpat92 = internal global [3 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.92 = private unnamed_addr constant [5 x i8] c"A421\00", align 1
@owl_attackpat93 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.93 = private unnamed_addr constant [5 x i8] c"A422\00", align 1
@owl_attackpat94 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.94 = private unnamed_addr constant [6 x i8] c"A422a\00", align 1
@owl_attackpat95 = internal global [3 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 1 }], align 16
@.str.95 = private unnamed_addr constant [5 x i8] c"A423\00", align 1
@owl_attackpat96 = internal global [3 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 1 }], align 16
@.str.96 = private unnamed_addr constant [6 x i8] c"A423a\00", align 1
@owl_attackpat97 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 610, i32 3 }], align 16
@.str.97 = private unnamed_addr constant [5 x i8] c"A501\00", align 1
@owl_attackpat98 = internal global [4 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.98 = private unnamed_addr constant [5 x i8] c"A502\00", align 1
@owl_attackpat99 = internal global [5 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.99 = private unnamed_addr constant [5 x i8] c"A503\00", align 1
@owl_attackpat100 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.100 = private unnamed_addr constant [5 x i8] c"A504\00", align 1
@owl_attackpat101 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.101 = private unnamed_addr constant [5 x i8] c"A505\00", align 1
@owl_attackpat102 = internal global [2 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 757, i32 1 }], align 16
@.str.102 = private unnamed_addr constant [5 x i8] c"A506\00", align 1
@owl_attackpat103 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.103 = private unnamed_addr constant [5 x i8] c"A507\00", align 1
@owl_attackpat104 = internal global [4 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.104 = private unnamed_addr constant [5 x i8] c"A508\00", align 1
@owl_attackpat105 = internal global [5 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.105 = private unnamed_addr constant [5 x i8] c"A509\00", align 1
@owl_attackpat106 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 757, i32 1 }], align 16
@.str.106 = private unnamed_addr constant [5 x i8] c"A510\00", align 1
@owl_attackpat107 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.107 = private unnamed_addr constant [5 x i8] c"A511\00", align 1
@owl_attackpat108 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.108 = private unnamed_addr constant [5 x i8] c"A512\00", align 1
@owl_attackpat109 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.109 = private unnamed_addr constant [5 x i8] c"A513\00", align 1
@owl_attackpat110 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 3 }], align 16
@.str.110 = private unnamed_addr constant [5 x i8] c"A514\00", align 1
@owl_attackpat111 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.111 = private unnamed_addr constant [5 x i8] c"A601\00", align 1
@owl_attackpat112 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.112 = private unnamed_addr constant [5 x i8] c"A602\00", align 1
@owl_attackpat113 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 610, i32 3 }], align 16
@.str.113 = private unnamed_addr constant [5 x i8] c"A603\00", align 1
@owl_attackpat114 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.114 = private unnamed_addr constant [6 x i8] c"A603b\00", align 1
@owl_attackpat115 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.115 = private unnamed_addr constant [5 x i8] c"A604\00", align 1
@owl_attackpat116 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.116 = private unnamed_addr constant [5 x i8] c"A605\00", align 1
@owl_attackpat117 = internal global [4 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 611, i32 3 }], align 16
@.str.117 = private unnamed_addr constant [5 x i8] c"A606\00", align 1
@owl_attackpat118 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.118 = private unnamed_addr constant [5 x i8] c"A607\00", align 1
@owl_attackpat119 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.119 = private unnamed_addr constant [6 x i8] c"A607b\00", align 1
@owl_attackpat120 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.120 = private unnamed_addr constant [5 x i8] c"A608\00", align 1
@owl_attackpat121 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.121 = private unnamed_addr constant [5 x i8] c"A609\00", align 1
@owl_attackpat122 = internal global [2 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.122 = private unnamed_addr constant [5 x i8] c"A610\00", align 1
@owl_attackpat123 = internal global [4 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 720, i32 3 }], align 16
@.str.123 = private unnamed_addr constant [5 x i8] c"A611\00", align 1
@owl_attackpat124 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.124 = private unnamed_addr constant [5 x i8] c"A612\00", align 1
@owl_attackpat125 = internal global [3 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.125 = private unnamed_addr constant [5 x i8] c"A613\00", align 1
@owl_attackpat126 = internal global [4 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 1 }], align 16
@.str.126 = private unnamed_addr constant [5 x i8] c"A614\00", align 1
@owl_attackpat127 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.127 = private unnamed_addr constant [5 x i8] c"A615\00", align 1
@owl_attackpat128 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 649, i32 3 }], align 16
@.str.128 = private unnamed_addr constant [5 x i8] c"A616\00", align 1
@owl_attackpat129 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.129 = private unnamed_addr constant [5 x i8] c"A617\00", align 1
@owl_attackpat130 = internal global [5 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.130 = private unnamed_addr constant [5 x i8] c"A618\00", align 1
@owl_attackpat131 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.131 = private unnamed_addr constant [5 x i8] c"A619\00", align 1
@owl_attackpat132 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 611, i32 3 }], align 16
@.str.132 = private unnamed_addr constant [5 x i8] c"A701\00", align 1
@owl_attackpat133 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.133 = private unnamed_addr constant [5 x i8] c"A702\00", align 1
@owl_attackpat134 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.134 = private unnamed_addr constant [5 x i8] c"A703\00", align 1
@owl_attackpat135 = internal global [3 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.135 = private unnamed_addr constant [5 x i8] c"A704\00", align 1
@owl_attackpat136 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.136 = private unnamed_addr constant [6 x i8] c"A705b\00", align 1
@owl_attackpat137 = internal global [3 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.137 = private unnamed_addr constant [5 x i8] c"A706\00", align 1
@owl_attackpat138 = internal global [3 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.138 = private unnamed_addr constant [5 x i8] c"A707\00", align 1
@owl_attackpat139 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.139 = private unnamed_addr constant [5 x i8] c"A708\00", align 1
@owl_attackpat140 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.140 = private unnamed_addr constant [5 x i8] c"A709\00", align 1
@owl_attackpat141 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.141 = private unnamed_addr constant [5 x i8] c"A710\00", align 1
@owl_attackpat142 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 794, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 685, i32 3 }], align 16
@.str.142 = private unnamed_addr constant [5 x i8] c"A711\00", align 1
@owl_attackpat143 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.143 = private unnamed_addr constant [5 x i8] c"A712\00", align 1
@owl_attackpat144 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.144 = private unnamed_addr constant [5 x i8] c"A713\00", align 1
@owl_attackpat145 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 687, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 761, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.145 = private unnamed_addr constant [5 x i8] c"A714\00", align 1
@owl_attackpat146 = internal global [6 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.146 = private unnamed_addr constant [5 x i8] c"A715\00", align 1
@owl_attackpat147 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 685, i32 3 }], align 16
@.str.147 = private unnamed_addr constant [5 x i8] c"A716\00", align 1
@owl_attackpat148 = internal global [4 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.148 = private unnamed_addr constant [5 x i8] c"A717\00", align 1
@owl_attackpat149 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 649, i32 3 }], align 16
@.str.149 = private unnamed_addr constant [5 x i8] c"A718\00", align 1
@owl_attackpat150 = internal global [7 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.150 = private unnamed_addr constant [5 x i8] c"A801\00", align 1
@owl_attackpat151 = internal global [5 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.151 = private unnamed_addr constant [5 x i8] c"A802\00", align 1
@owl_attackpat152 = internal global [4 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.152 = private unnamed_addr constant [5 x i8] c"A803\00", align 1
@owl_attackpat153 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.153 = private unnamed_addr constant [5 x i8] c"A804\00", align 1
@owl_attackpat154 = internal global [5 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.154 = private unnamed_addr constant [5 x i8] c"A805\00", align 1
@owl_attackpat155 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 1 }], align 16
@.str.155 = private unnamed_addr constant [5 x i8] c"A806\00", align 1
@owl_attackpat156 = internal global [2 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.156 = private unnamed_addr constant [5 x i8] c"A807\00", align 1
@owl_attackpat157 = internal global [2 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.157 = private unnamed_addr constant [5 x i8] c"A808\00", align 1
@owl_attackpat158 = internal global [3 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.158 = private unnamed_addr constant [5 x i8] c"A809\00", align 1
@owl_attackpat159 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.159 = private unnamed_addr constant [5 x i8] c"A810\00", align 1
@owl_attackpat160 = internal global [4 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.160 = private unnamed_addr constant [5 x i8] c"A811\00", align 1
@owl_attackpat161 = internal global [5 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.161 = private unnamed_addr constant [5 x i8] c"A901\00", align 1
@owl_attackpat162 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.162 = private unnamed_addr constant [5 x i8] c"A902\00", align 1
@owl_attackpat163 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.163 = private unnamed_addr constant [6 x i8] c"A902b\00", align 1
@owl_attackpat164 = internal global [4 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 646, i32 3 }], align 16
@.str.164 = private unnamed_addr constant [5 x i8] c"A903\00", align 1
@owl_attackpat165 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.165 = private unnamed_addr constant [5 x i8] c"A904\00", align 1
@owl_attackpat166 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.166 = private unnamed_addr constant [5 x i8] c"A905\00", align 1
@owl_attackpat167 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.167 = private unnamed_addr constant [5 x i8] c"A907\00", align 1
@owl_attackpat168 = internal global [5 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.168 = private unnamed_addr constant [5 x i8] c"A908\00", align 1
@owl_attackpat169 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.169 = private unnamed_addr constant [5 x i8] c"A909\00", align 1
@owl_attackpat170 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.170 = private unnamed_addr constant [5 x i8] c"A910\00", align 1
@owl_attackpat171 = internal global [3 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.171 = private unnamed_addr constant [5 x i8] c"A911\00", align 1
@owl_attackpat172 = internal global [3 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.172 = private unnamed_addr constant [5 x i8] c"A912\00", align 1
@owl_attackpat173 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.173 = private unnamed_addr constant [5 x i8] c"A913\00", align 1
@owl_attackpat174 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.174 = private unnamed_addr constant [5 x i8] c"A914\00", align 1
@owl_attackpat175 = internal global [3 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.175 = private unnamed_addr constant [5 x i8] c"A915\00", align 1
@owl_attackpat176 = internal global [5 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.176 = private unnamed_addr constant [5 x i8] c"A916\00", align 1
@owl_attackpat177 = internal global [5 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }], align 16
@.str.177 = private unnamed_addr constant [5 x i8] c"A917\00", align 1
@owl_attackpat178 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.178 = private unnamed_addr constant [5 x i8] c"A918\00", align 1
@owl_attackpat179 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.179 = private unnamed_addr constant [6 x i8] c"A1001\00", align 1
@owl_attackpat180 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.180 = private unnamed_addr constant [7 x i8] c"A1001b\00", align 1
@owl_attackpat181 = internal global [2 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.181 = private unnamed_addr constant [6 x i8] c"A1002\00", align 1
@owl_attackpat182 = internal global [2 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.182 = private unnamed_addr constant [6 x i8] c"A1003\00", align 1
@owl_attackpat183 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.183 = private unnamed_addr constant [6 x i8] c"A1005\00", align 1
@owl_attackpat184 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.184 = private unnamed_addr constant [7 x i8] c"A1005b\00", align 1
@owl_attackpat185 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.185 = private unnamed_addr constant [6 x i8] c"A1006\00", align 1
@owl_attackpat186 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.186 = private unnamed_addr constant [7 x i8] c"A1006b\00", align 1
@owl_attackpat187 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.187 = private unnamed_addr constant [6 x i8] c"A1008\00", align 1
@owl_attackpat188 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.188 = private unnamed_addr constant [7 x i8] c"A1008b\00", align 1
@owl_attackpat189 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.189 = private unnamed_addr constant [6 x i8] c"A1009\00", align 1
@owl_attackpat190 = internal global [2 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.190 = private unnamed_addr constant [6 x i8] c"A1010\00", align 1
@owl_attackpat191 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.191 = private unnamed_addr constant [6 x i8] c"A1011\00", align 1
@owl_attackpat192 = internal global [3 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.192 = private unnamed_addr constant [6 x i8] c"A1012\00", align 1
@owl_attackpat193 = internal global [2 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.193 = private unnamed_addr constant [6 x i8] c"A1013\00", align 1
@owl_attackpat194 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 573, i32 3 }, %struct.patval { i32 536, i32 3 }], align 16
@.str.194 = private unnamed_addr constant [6 x i8] c"A1014\00", align 1
@owl_attackpat195 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 796, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 795, i32 1 }], align 16
@.str.195 = private unnamed_addr constant [6 x i8] c"A1015\00", align 1
@owl_attackpat196 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 796, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 795, i32 1 }], align 16
@.str.196 = private unnamed_addr constant [7 x i8] c"A1015a\00", align 1
@owl_attackpat197 = internal global [3 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.197 = private unnamed_addr constant [6 x i8] c"A1016\00", align 1
@owl_attackpat198 = internal global [3 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.198 = private unnamed_addr constant [7 x i8] c"A1016a\00", align 1
@owl_attackpat199 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.199 = private unnamed_addr constant [6 x i8] c"A1017\00", align 1
@owl_attackpat200 = internal global [2 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 686, i32 1 }], align 16
@.str.200 = private unnamed_addr constant [6 x i8] c"A1018\00", align 1
@owl_attackpat201 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 796, i32 1 }], align 16
@.str.201 = private unnamed_addr constant [6 x i8] c"A1019\00", align 1
@owl_attackpat202 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.202 = private unnamed_addr constant [6 x i8] c"A1020\00", align 1
@owl_attackpat203 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }], align 16
@.str.203 = private unnamed_addr constant [6 x i8] c"A1100\00", align 1
@owl_attackpat204 = internal global [1 x %struct.patval] [%struct.patval { i32 722, i32 1 }], align 4
@.str.204 = private unnamed_addr constant [6 x i8] c"A1101\00", align 1
@owl_attackpat205 = internal global [1 x %struct.patval] [%struct.patval { i32 722, i32 1 }], align 4
@.str.205 = private unnamed_addr constant [7 x i8] c"A1101b\00", align 1
@owl_attackpat206 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.206 = private unnamed_addr constant [7 x i8] c"A1101c\00", align 1
@owl_attackpat207 = internal global [2 x %struct.patval] [%struct.patval { i32 757, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.207 = private unnamed_addr constant [6 x i8] c"A1102\00", align 1
@owl_attackpat208 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.208 = private unnamed_addr constant [6 x i8] c"A1104\00", align 1
@owl_attackpat209 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 648, i32 3 }], align 16
@.str.209 = private unnamed_addr constant [6 x i8] c"A1105\00", align 1
@owl_attackpat210 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.210 = private unnamed_addr constant [6 x i8] c"A1106\00", align 1
@owl_attackpat211 = internal global [1 x %struct.patval] [%struct.patval { i32 685, i32 1 }], align 4
@.str.211 = private unnamed_addr constant [6 x i8] c"A1107\00", align 1
@owl_attackpat212 = internal global [1 x %struct.patval] [%struct.patval { i32 685, i32 1 }], align 4
@.str.212 = private unnamed_addr constant [7 x i8] c"A1107b\00", align 1
@owl_attackpat213 = internal global [1 x %struct.patval] [%struct.patval { i32 685, i32 1 }], align 4
@.str.213 = private unnamed_addr constant [7 x i8] c"A1107c\00", align 1
@owl_attackpat214 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.214 = private unnamed_addr constant [6 x i8] c"A1108\00", align 1
@owl_attackpat215 = internal global [3 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.215 = private unnamed_addr constant [6 x i8] c"A1109\00", align 1
@owl_attackpat216 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.216 = private unnamed_addr constant [6 x i8] c"A1110\00", align 1
@owl_attackpat217 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 682, i32 3 }], align 16
@.str.217 = private unnamed_addr constant [6 x i8] c"A1111\00", align 1
@owl_attackpat218 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.218 = private unnamed_addr constant [6 x i8] c"A1112\00", align 1
@owl_attackpat219 = internal global [3 x %struct.patval] [%struct.patval { i32 645, i32 1 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.219 = private unnamed_addr constant [6 x i8] c"A1113\00", align 1
@owl_attackpat220 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.220 = private unnamed_addr constant [6 x i8] c"A1114\00", align 1
@owl_attackpat221 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.221 = private unnamed_addr constant [6 x i8] c"A1115\00", align 1
@owl_attackpat222 = internal global [6 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.222 = private unnamed_addr constant [6 x i8] c"A1116\00", align 1
@owl_attackpat223 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.223 = private unnamed_addr constant [6 x i8] c"A1117\00", align 1
@owl_attackpat224 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.224 = private unnamed_addr constant [7 x i8] c"A1117a\00", align 1
@owl_attackpat225 = internal global [2 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.225 = private unnamed_addr constant [6 x i8] c"A1118\00", align 1
@owl_attackpat226 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.226 = private unnamed_addr constant [6 x i8] c"A1119\00", align 1
@owl_attackpat227 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.227 = private unnamed_addr constant [6 x i8] c"A1121\00", align 1
@owl_attackpat228 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }], align 16
@.str.228 = private unnamed_addr constant [6 x i8] c"A1122\00", align 1
@owl_attackpat229 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }], align 16
@.str.229 = private unnamed_addr constant [7 x i8] c"A1122a\00", align 1
@owl_attackpat230 = internal global [3 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.230 = private unnamed_addr constant [6 x i8] c"A1123\00", align 1
@owl_attackpat231 = internal global [3 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.231 = private unnamed_addr constant [7 x i8] c"A1123a\00", align 1
@owl_attackpat232 = internal global [1 x %struct.patval] [%struct.patval { i32 721, i32 1 }], align 4
@.str.232 = private unnamed_addr constant [6 x i8] c"A1124\00", align 1
@owl_attackpat233 = internal global [1 x %struct.patval] [%struct.patval { i32 721, i32 1 }], align 4
@.str.233 = private unnamed_addr constant [7 x i8] c"A1124a\00", align 1
@owl_attackpat234 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 682, i32 3 }], align 16
@.str.234 = private unnamed_addr constant [6 x i8] c"A1125\00", align 1
@owl_attackpat235 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.235 = private unnamed_addr constant [6 x i8] c"A1126\00", align 1
@owl_attackpat236 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.236 = private unnamed_addr constant [6 x i8] c"A1127\00", align 1
@owl_attackpat237 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.237 = private unnamed_addr constant [7 x i8] c"A1127a\00", align 1
@owl_attackpat238 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.238 = private unnamed_addr constant [6 x i8] c"A1128\00", align 1
@owl_attackpat239 = internal global [5 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 646, i32 3 }], align 16
@.str.239 = private unnamed_addr constant [6 x i8] c"A1129\00", align 1
@owl_attackpat240 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 720, i32 3 }], align 16
@.str.240 = private unnamed_addr constant [6 x i8] c"A1130\00", align 1
@owl_attackpat241 = internal global [1 x %struct.patval] [%struct.patval { i32 685, i32 1 }], align 4
@.str.241 = private unnamed_addr constant [6 x i8] c"A1201\00", align 1
@owl_attackpat242 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.242 = private unnamed_addr constant [6 x i8] c"A1203\00", align 1
@owl_attackpat243 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.243 = private unnamed_addr constant [6 x i8] c"A1204\00", align 1
@owl_attackpat244 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.244 = private unnamed_addr constant [6 x i8] c"A1205\00", align 1
@owl_attackpat245 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.245 = private unnamed_addr constant [6 x i8] c"A1206\00", align 1
@owl_attackpat246 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.246 = private unnamed_addr constant [6 x i8] c"A1207\00", align 1
@owl_attackpat247 = internal global [2 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.247 = private unnamed_addr constant [6 x i8] c"A1208\00", align 1
@owl_attackpat248 = internal global [2 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.248 = private unnamed_addr constant [6 x i8] c"A1209\00", align 1
@owl_attackpat249 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.249 = private unnamed_addr constant [6 x i8] c"A1301\00", align 1
@owl_attackpat250 = internal global [2 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.250 = private unnamed_addr constant [6 x i8] c"A1302\00", align 1
@owl_attackpat251 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.251 = private unnamed_addr constant [6 x i8] c"A1303\00", align 1
@owl_attackpat252 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 610, i32 1 }], align 16
@.str.252 = private unnamed_addr constant [7 x i8] c"A1303b\00", align 1
@owl_attackpat253 = internal global [2 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.253 = private unnamed_addr constant [6 x i8] c"A1304\00", align 1
@owl_attackpat254 = internal global [5 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 760, i32 1 }], align 16
@.str.254 = private unnamed_addr constant [6 x i8] c"A1305\00", align 1
@owl_attackpat255 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.255 = private unnamed_addr constant [7 x i8] c"A1305b\00", align 1
@owl_attackpat256 = internal global [5 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 760, i32 1 }], align 16
@.str.256 = private unnamed_addr constant [6 x i8] c"A1306\00", align 1
@owl_attackpat257 = internal global [6 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.257 = private unnamed_addr constant [6 x i8] c"A1307\00", align 1
@owl_attackpat258 = internal global [6 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.258 = private unnamed_addr constant [6 x i8] c"A1308\00", align 1
@owl_attackpat259 = internal global [4 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.259 = private unnamed_addr constant [6 x i8] c"A1309\00", align 1
@owl_attackpat260 = internal global [3 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.260 = private unnamed_addr constant [6 x i8] c"A1310\00", align 1
@owl_attackpat261 = internal global [6 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.261 = private unnamed_addr constant [7 x i8] c"A1310b\00", align 1
@owl_attackpat262 = internal global [4 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.262 = private unnamed_addr constant [6 x i8] c"A1311\00", align 1
@owl_attackpat263 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.263 = private unnamed_addr constant [7 x i8] c"A1311b\00", align 1
@owl_attackpat264 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.264 = private unnamed_addr constant [6 x i8] c"A1312\00", align 1
@owl_attackpat265 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 3 }], align 16
@.str.265 = private unnamed_addr constant [6 x i8] c"A1313\00", align 1
@owl_attackpat266 = internal global [3 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.266 = private unnamed_addr constant [6 x i8] c"A1314\00", align 1
@owl_attackpat267 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.267 = private unnamed_addr constant [6 x i8] c"A1315\00", align 1
@owl_attackpat268 = internal global [4 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 760, i32 1 }], align 16
@.str.268 = private unnamed_addr constant [6 x i8] c"A1316\00", align 1
@owl_attackpat269 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.269 = private unnamed_addr constant [6 x i8] c"A1317\00", align 1
@owl_attackpat270 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.270 = private unnamed_addr constant [6 x i8] c"A1318\00", align 1
@owl_attackpat271 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.271 = private unnamed_addr constant [6 x i8] c"A1319\00", align 1
@owl_attackpat272 = internal global [3 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.272 = private unnamed_addr constant [7 x i8] c"A1319b\00", align 1
@owl_attackpat273 = internal global [5 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.273 = private unnamed_addr constant [7 x i8] c"A1319c\00", align 1
@owl_attackpat274 = internal global [3 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.274 = private unnamed_addr constant [6 x i8] c"A1320\00", align 1
@owl_attackpat275 = internal global [3 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.275 = private unnamed_addr constant [6 x i8] c"A1321\00", align 1
@owl_attackpat276 = internal global [3 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.276 = private unnamed_addr constant [6 x i8] c"A1322\00", align 1
@owl_attackpat277 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 723, i32 1 }], align 16
@.str.277 = private unnamed_addr constant [6 x i8] c"A1323\00", align 1
@owl_attackpat278 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.278 = private unnamed_addr constant [6 x i8] c"A1324\00", align 1
@owl_attackpat279 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.279 = private unnamed_addr constant [6 x i8] c"A1325\00", align 1
@owl_attackpat280 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.280 = private unnamed_addr constant [6 x i8] c"A1326\00", align 1
@owl_attackpat281 = internal global [3 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.281 = private unnamed_addr constant [6 x i8] c"A1327\00", align 1
@owl_attackpat282 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 686, i32 3 }], align 16
@.str.282 = private unnamed_addr constant [6 x i8] c"A1328\00", align 1
@owl_attackpat283 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 723, i32 3 }], align 16
@.str.283 = private unnamed_addr constant [6 x i8] c"A1329\00", align 1
@owl_attackpat284 = internal global [6 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.284 = private unnamed_addr constant [6 x i8] c"A1330\00", align 1
@owl_attackpat285 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.285 = private unnamed_addr constant [6 x i8] c"A1331\00", align 1
@owl_attackpat286 = internal global [6 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.286 = private unnamed_addr constant [6 x i8] c"A1332\00", align 1
@owl_attackpat287 = internal global [7 x %struct.patval] [%struct.patval { i32 645, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 757, i32 1 }], align 16
@.str.287 = private unnamed_addr constant [6 x i8] c"A1333\00", align 1
@owl_attackpat288 = internal global [8 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.288 = private unnamed_addr constant [6 x i8] c"A1334\00", align 1
@owl_attackpat289 = internal global [3 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.289 = private unnamed_addr constant [6 x i8] c"A1335\00", align 1
@owl_attackpat290 = internal global [3 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.290 = private unnamed_addr constant [7 x i8] c"A1335b\00", align 1
@owl_attackpat291 = internal global [5 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 686, i32 1 }], align 16
@.str.291 = private unnamed_addr constant [6 x i8] c"A1336\00", align 1
@owl_attackpat292 = internal global [8 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 720, i32 3 }], align 16
@.str.292 = private unnamed_addr constant [6 x i8] c"A1337\00", align 1
@owl_attackpat293 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.293 = private unnamed_addr constant [6 x i8] c"A1338\00", align 1
@owl_attackpat294 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.294 = private unnamed_addr constant [6 x i8] c"A1339\00", align 1
@owl_attackpat295 = internal global [5 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.295 = private unnamed_addr constant [6 x i8] c"A1340\00", align 1
@owl_attackpat296 = internal global [5 x %struct.patval] [%struct.patval { i32 719, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.296 = private unnamed_addr constant [6 x i8] c"A1341\00", align 1
@owl_attackpat297 = internal global [5 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 645, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.297 = private unnamed_addr constant [6 x i8] c"A1342\00", align 1
@owl_attackpat298 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 646, i32 3 }], align 16
@.str.298 = private unnamed_addr constant [6 x i8] c"A1343\00", align 1
@owl_attackpat299 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.299 = private unnamed_addr constant [6 x i8] c"A1344\00", align 1
@owl_attackpat300 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 646, i32 1 }], align 16
@.str.300 = private unnamed_addr constant [6 x i8] c"A1345\00", align 1
@owl_attackpat301 = internal global [6 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.301 = private unnamed_addr constant [6 x i8] c"A1346\00", align 1
@owl_attackpat302 = internal global [5 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.302 = private unnamed_addr constant [6 x i8] c"A1347\00", align 1
@owl_attackpat303 = internal global [8 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.303 = private unnamed_addr constant [6 x i8] c"A1348\00", align 1
@owl_attackpat304 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.304 = private unnamed_addr constant [6 x i8] c"A1401\00", align 1
@owl_attackpat305 = internal global [1 x %struct.patval] [%struct.patval { i32 610, i32 1 }], align 4
@.str.305 = private unnamed_addr constant [6 x i8] c"A1403\00", align 1
@owl_attackpat306 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.306 = private unnamed_addr constant [6 x i8] c"A1501\00", align 1
@owl_attackpat307 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.307 = private unnamed_addr constant [6 x i8] c"A1502\00", align 1
@owl_attackpat308 = internal global [4 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.308 = private unnamed_addr constant [6 x i8] c"A1503\00", align 1
@owl_attackpat309 = internal global [4 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.309 = private unnamed_addr constant [7 x i8] c"A1503a\00", align 1
@owl_attackpat310 = internal global [6 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.310 = private unnamed_addr constant [6 x i8] c"A1504\00", align 1
@owl_attackpat311 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.311 = private unnamed_addr constant [6 x i8] c"A1601\00", align 1
@owl_attackpat312 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.312 = private unnamed_addr constant [6 x i8] c"A1602\00", align 1
@owl_attackpat313 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.313 = private unnamed_addr constant [6 x i8] c"A1603\00", align 1
@owl_attackpat314 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 686, i32 1 }], align 16
@.str.314 = private unnamed_addr constant [6 x i8] c"A1604\00", align 1
@owl_attackpat315 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.315 = private unnamed_addr constant [6 x i8] c"A1605\00", align 1
@owl_attackpat316 = internal global [4 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.316 = private unnamed_addr constant [6 x i8] c"A1606\00", align 1
@owl_attackpat317 = internal global [4 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.317 = private unnamed_addr constant [6 x i8] c"A1607\00", align 1
@owl_attackpat318 = internal global [4 x %struct.patval] [%struct.patval { i32 609, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.318 = private unnamed_addr constant [6 x i8] c"A1608\00", align 1
@owl_attackpat319 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 610, i32 3 }], align 16
@.str.319 = private unnamed_addr constant [7 x i8] c"A1608b\00", align 1
@owl_attackpat320 = internal global [4 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.320 = private unnamed_addr constant [6 x i8] c"A1609\00", align 1
@owl_attackpat321 = internal global [5 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 649, i32 1 }], align 16
@.str.321 = private unnamed_addr constant [6 x i8] c"A1610\00", align 1
@owl_attackpat322 = internal global [6 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.322 = private unnamed_addr constant [6 x i8] c"A1611\00", align 1
@owl_attackpat323 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.323 = private unnamed_addr constant [6 x i8] c"A1612\00", align 1
@owl_attackpat324 = internal global [6 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.324 = private unnamed_addr constant [6 x i8] c"A1613\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@stackp = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@board = external dso_local global [421 x i8], align 16
@idx_owl_attackpat = internal constant [388 x %struct.attrib_rt] [%struct.attrib_rt { i16 -1, i16 0 }, %struct.attrib_rt { i16 58, i16 0 }, %struct.attrib_rt { i16 33, i16 0 }, %struct.attrib_rt { i16 92, i16 0 }, %struct.attrib_rt { i16 57, i16 0 }, %struct.attrib_rt { i16 219, i16 0 }, %struct.attrib_rt { i16 220, i16 0 }, %struct.attrib_rt { i16 187, i16 0 }, %struct.attrib_rt { i16 46, i16 0 }, %struct.attrib_rt { i16 25, i16 8 }, %struct.attrib_rt { i16 305, i16 0 }, %struct.attrib_rt { i16 74, i16 0 }, %struct.attrib_rt { i16 73, i16 0 }, %struct.attrib_rt { i16 93, i16 0 }, %struct.attrib_rt { i16 94, i16 13 }, %struct.attrib_rt { i16 15, i16 0 }, %struct.attrib_rt { i16 20, i16 0 }, %struct.attrib_rt { i16 205, i16 0 }, %struct.attrib_rt { i16 204, i16 17 }, %struct.attrib_rt { i16 207, i16 0 }, %struct.attrib_rt { i16 200, i16 0 }, %struct.attrib_rt { i16 51, i16 0 }, %struct.attrib_rt { i16 200, i16 21 }, %struct.attrib_rt { i16 102, i16 0 }, %struct.attrib_rt { i16 231, i16 0 }, %struct.attrib_rt { i16 197, i16 24 }, %struct.attrib_rt { i16 230, i16 25 }, %struct.attrib_rt { i16 198, i16 26 }, %struct.attrib_rt { i16 60, i16 0 }, %struct.attrib_rt { i16 218, i16 0 }, %struct.attrib_rt { i16 189, i16 0 }, %struct.attrib_rt { i16 64, i16 0 }, %struct.attrib_rt { i16 272, i16 0 }, %struct.attrib_rt { i16 164, i16 0 }, %struct.attrib_rt { i16 208, i16 0 }, %struct.attrib_rt { i16 262, i16 0 }, %struct.attrib_rt { i16 189, i16 35 }, %struct.attrib_rt { i16 263, i16 0 }, %struct.attrib_rt { i16 106, i16 0 }, %struct.attrib_rt { i16 59, i16 0 }, %struct.attrib_rt { i16 287, i16 0 }, %struct.attrib_rt { i16 232, i16 0 }, %struct.attrib_rt { i16 233, i16 41 }, %struct.attrib_rt { i16 1, i16 0 }, %struct.attrib_rt { i16 48, i16 0 }, %struct.attrib_rt { i16 49, i16 44 }, %struct.attrib_rt { i16 223, i16 0 }, %struct.attrib_rt { i16 224, i16 46 }, %struct.attrib_rt { i16 39, i16 0 }, %struct.attrib_rt { i16 40, i16 48 }, %struct.attrib_rt { i16 101, i16 49 }, %struct.attrib_rt { i16 38, i16 50 }, %struct.attrib_rt { i16 35, i16 51 }, %struct.attrib_rt zeroinitializer, %struct.attrib_rt { i16 41, i16 51 }, %struct.attrib_rt { i16 35, i16 0 }, %struct.attrib_rt { i16 5, i16 0 }, %struct.attrib_rt { i16 295, i16 0 }, %struct.attrib_rt { i16 152, i16 0 }, %struct.attrib_rt { i16 154, i16 0 }, %struct.attrib_rt { i16 154, i16 56 }, %struct.attrib_rt { i16 101, i16 48 }, %struct.attrib_rt { i16 38, i16 61 }, %struct.attrib_rt { i16 35, i16 62 }, %struct.attrib_rt { i16 185, i16 0 }, %struct.attrib_rt { i16 186, i16 64 }, %struct.attrib_rt { i16 191, i16 0 }, %struct.attrib_rt { i16 121, i16 66 }, %struct.attrib_rt { i16 166, i16 0 }, %struct.attrib_rt { i16 163, i16 0 }, %struct.attrib_rt { i16 162, i16 69 }, %struct.attrib_rt { i16 217, i16 0 }, %struct.attrib_rt { i16 165, i16 0 }, %struct.attrib_rt { i16 130, i16 0 }, %struct.attrib_rt { i16 285, i16 0 }, %struct.attrib_rt { i16 75, i16 0 }, %struct.attrib_rt { i16 71, i16 0 }, %struct.attrib_rt { i16 70, i16 76 }, %struct.attrib_rt { i16 70, i16 0 }, %struct.attrib_rt { i16 288, i16 0 }, %struct.attrib_rt { i16 292, i16 0 }, %struct.attrib_rt { i16 183, i16 0 }, %struct.attrib_rt { i16 184, i16 81 }, %struct.attrib_rt { i16 187, i16 82 }, %struct.attrib_rt { i16 211, i16 0 }, %struct.attrib_rt { i16 241, i16 0 }, %struct.attrib_rt { i16 213, i16 0 }, %struct.attrib_rt { i16 212, i16 0 }, %struct.attrib_rt { i16 52, i16 0 }, %struct.attrib_rt { i16 55, i16 0 }, %struct.attrib_rt { i16 54, i16 0 }, %struct.attrib_rt { i16 194, i16 0 }, %struct.attrib_rt { i16 56, i16 82 }, %struct.attrib_rt { i16 187, i16 92 }, %struct.attrib_rt { i16 98, i16 0 }, %struct.attrib_rt { i16 47, i16 0 }, %struct.attrib_rt { i16 42, i16 0 }, %struct.attrib_rt { i16 4, i16 0 }, %struct.attrib_rt { i16 24, i16 0 }, %struct.attrib_rt { i16 148, i16 0 }, %struct.attrib_rt { i16 12, i16 0 }, %struct.attrib_rt { i16 209, i16 0 }, %struct.attrib_rt { i16 34, i16 0 }, %struct.attrib_rt { i16 23, i16 0 }, %struct.attrib_rt { i16 50, i16 0 }, %struct.attrib_rt { i16 324, i16 0 }, %struct.attrib_rt { i16 249, i16 0 }, %struct.attrib_rt { i16 18, i16 0 }, %struct.attrib_rt { i16 88, i16 0 }, %struct.attrib_rt { i16 6, i16 0 }, %struct.attrib_rt { i16 183, i16 47 }, %struct.attrib_rt { i16 184, i16 110 }, %struct.attrib_rt { i16 56, i16 111 }, %struct.attrib_rt { i16 290, i16 0 }, %struct.attrib_rt { i16 157, i16 0 }, %struct.attrib_rt { i16 234, i16 0 }, %struct.attrib_rt { i16 240, i16 0 }, %struct.attrib_rt { i16 53, i16 0 }, %struct.attrib_rt { i16 54, i16 117 }, %struct.attrib_rt { i16 210, i16 0 }, %struct.attrib_rt { i16 81, i16 0 }, %struct.attrib_rt { i16 80, i16 0 }, %struct.attrib_rt { i16 83, i16 0 }, %struct.attrib_rt { i16 202, i16 0 }, %struct.attrib_rt { i16 84, i16 0 }, %struct.attrib_rt { i16 201, i16 0 }, %struct.attrib_rt { i16 304, i16 0 }, %struct.attrib_rt { i16 77, i16 0 }, %struct.attrib_rt { i16 226, i16 0 }, %struct.attrib_rt { i16 229, i16 0 }, %struct.attrib_rt { i16 228, i16 129 }, %struct.attrib_rt { i16 16, i16 0 }, %struct.attrib_rt { i16 9, i16 0 }, %struct.attrib_rt { i16 66, i16 0 }, %struct.attrib_rt { i16 13, i16 0 }, %struct.attrib_rt { i16 104, i16 0 }, %struct.attrib_rt { i16 82, i16 0 }, %struct.attrib_rt { i16 202, i16 136 }, %struct.attrib_rt { i16 27, i16 0 }, %struct.attrib_rt { i16 26, i16 138 }, %struct.attrib_rt { i16 28, i16 0 }, %struct.attrib_rt { i16 26, i16 0 }, %struct.attrib_rt { i16 306, i16 0 }, %struct.attrib_rt { i16 11, i16 0 }, %struct.attrib_rt { i16 265, i16 0 }, %struct.attrib_rt { i16 206, i16 0 }, %struct.attrib_rt { i16 235, i16 145 }, %struct.attrib_rt { i16 278, i16 0 }, %struct.attrib_rt { i16 140, i16 0 }, %struct.attrib_rt { i16 76, i16 0 }, %struct.attrib_rt { i16 307, i16 0 }, %struct.attrib_rt { i16 89, i16 128 }, %struct.attrib_rt { i16 90, i16 151 }, %struct.attrib_rt { i16 136, i16 0 }, %struct.attrib_rt { i16 199, i16 0 }, %struct.attrib_rt { i16 159, i16 142 }, %struct.attrib_rt { i16 72, i16 0 }, %struct.attrib_rt { i16 160, i16 0 }, %struct.attrib_rt { i16 226, i16 157 }, %struct.attrib_rt { i16 107, i16 0 }, %struct.attrib_rt { i16 11, i16 159 }, %struct.attrib_rt { i16 87, i16 0 }, %struct.attrib_rt { i16 97, i16 0 }, %struct.attrib_rt { i16 78, i16 0 }, %struct.attrib_rt { i16 141, i16 0 }, %struct.attrib_rt { i16 139, i16 164 }, %struct.attrib_rt { i16 17, i16 0 }, %struct.attrib_rt { i16 175, i16 0 }, %struct.attrib_rt { i16 282, i16 0 }, %struct.attrib_rt { i16 178, i16 0 }, %struct.attrib_rt { i16 282, i16 167 }, %struct.attrib_rt { i16 137, i16 0 }, %struct.attrib_rt { i16 138, i16 0 }, %struct.attrib_rt { i16 149, i16 0 }, %struct.attrib_rt { i16 286, i16 0 }, %struct.attrib_rt { i16 177, i16 0 }, %struct.attrib_rt { i16 178, i16 175 }, %struct.attrib_rt { i16 43, i16 0 }, %struct.attrib_rt { i16 44, i16 177 }, %struct.attrib_rt { i16 30, i16 0 }, %struct.attrib_rt { i16 114, i16 0 }, %struct.attrib_rt { i16 311, i16 0 }, %struct.attrib_rt { i16 131, i16 0 }, %struct.attrib_rt { i16 140, i16 178 }, %struct.attrib_rt { i16 140, i16 177 }, %struct.attrib_rt { i16 311, i16 148 }, %struct.attrib_rt { i16 116, i16 0 }, %struct.attrib_rt { i16 267, i16 0 }, %struct.attrib_rt { i16 103, i16 0 }, %struct.attrib_rt { i16 151, i16 0 }, %struct.attrib_rt { i16 171, i16 0 }, %struct.attrib_rt { i16 117, i16 0 }, %struct.attrib_rt { i16 150, i16 189 }, %struct.attrib_rt { i16 259, i16 0 }, %struct.attrib_rt { i16 19, i16 0 }, %struct.attrib_rt { i16 108, i16 0 }, %struct.attrib_rt { i16 323, i16 0 }, %struct.attrib_rt { i16 215, i16 0 }, %struct.attrib_rt { i16 238, i16 0 }, %struct.attrib_rt { i16 137, i16 198 }, %struct.attrib_rt { i16 138, i16 198 }, %struct.attrib_rt { i16 10, i16 0 }, %struct.attrib_rt { i16 155, i16 0 }, %struct.attrib_rt { i16 45, i16 0 }, %struct.attrib_rt { i16 255, i16 0 }, %struct.attrib_rt { i16 115, i16 0 }, %struct.attrib_rt { i16 301, i16 0 }, %struct.attrib_rt { i16 43, i16 206 }, %struct.attrib_rt { i16 140, i16 207 }, %struct.attrib_rt { i16 140, i16 206 }, %struct.attrib_rt { i16 113, i16 0 }, %struct.attrib_rt { i16 176, i16 0 }, %struct.attrib_rt { i16 72, i16 211 }, %struct.attrib_rt { i16 301, i16 211 }, %struct.attrib_rt { i16 72, i16 213 }, %struct.attrib_rt { i16 173, i16 0 }, %struct.attrib_rt { i16 174, i16 215 }, %struct.attrib_rt { i16 103, i16 216 }, %struct.attrib_rt { i16 72, i16 206 }, %struct.attrib_rt { i16 294, i16 156 }, %struct.attrib_rt { i16 294, i16 0 }, %struct.attrib_rt { i16 69, i16 0 }, %struct.attrib_rt { i16 67, i16 221 }, %struct.attrib_rt { i16 68, i16 222 }, %struct.attrib_rt { i16 67, i16 0 }, %struct.attrib_rt { i16 68, i16 224 }, %struct.attrib_rt { i16 3, i16 0 }, %struct.attrib_rt { i16 7, i16 0 }, %struct.attrib_rt { i16 3, i16 143 }, %struct.attrib_rt { i16 86, i16 0 }, %struct.attrib_rt { i16 86, i16 128 }, %struct.attrib_rt { i16 128, i16 0 }, %struct.attrib_rt { i16 3, i16 159 }, %struct.attrib_rt { i16 3, i16 160 }, %struct.attrib_rt { i16 227, i16 0 }, %struct.attrib_rt { i16 142, i16 0 }, %struct.attrib_rt { i16 111, i16 0 }, %struct.attrib_rt { i16 147, i16 0 }, %struct.attrib_rt { i16 279, i16 0 }, %struct.attrib_rt { i16 31, i16 0 }, %struct.attrib_rt { i16 67, i16 239 }, %struct.attrib_rt { i16 68, i16 240 }, %struct.attrib_rt { i16 190, i16 0 }, %struct.attrib_rt { i16 32, i16 0 }, %struct.attrib_rt { i16 86, i16 188 }, %struct.attrib_rt { i16 320, i16 0 }, %struct.attrib_rt { i16 225, i16 0 }, %struct.attrib_rt { i16 65, i16 0 }, %struct.attrib_rt { i16 21, i16 0 }, %struct.attrib_rt { i16 21, i16 142 }, %struct.attrib_rt { i16 21, i16 153 }, %struct.attrib_rt { i16 21, i16 155 }, %struct.attrib_rt { i16 123, i16 0 }, %struct.attrib_rt { i16 293, i16 0 }, %struct.attrib_rt { i16 95, i16 0 }, %struct.attrib_rt { i16 96, i16 254 }, %struct.attrib_rt { i16 29, i16 0 }, %struct.attrib_rt { i16 276, i16 0 }, %struct.attrib_rt { i16 251, i16 0 }, %struct.attrib_rt { i16 62, i16 0 }, %struct.attrib_rt { i16 105, i16 0 }, %struct.attrib_rt { i16 310, i16 0 }, %struct.attrib_rt { i16 244, i16 0 }, %struct.attrib_rt { i16 245, i16 262 }, %struct.attrib_rt { i16 61, i16 0 }, %struct.attrib_rt { i16 237, i16 0 }, %struct.attrib_rt { i16 236, i16 265 }, %struct.attrib_rt { i16 179, i16 0 }, %struct.attrib_rt { i16 180, i16 267 }, %struct.attrib_rt { i16 203, i16 0 }, %struct.attrib_rt { i16 120, i16 0 }, %struct.attrib_rt { i16 118, i16 270 }, %struct.attrib_rt { i16 247, i16 0 }, %struct.attrib_rt { i16 122, i16 0 }, %struct.attrib_rt { i16 8, i16 0 }, %struct.attrib_rt { i16 158, i16 0 }, %struct.attrib_rt { i16 153, i16 0 }, %struct.attrib_rt { i16 119, i16 0 }, %struct.attrib_rt { i16 300, i16 0 }, %struct.attrib_rt { i16 253, i16 0 }, %struct.attrib_rt { i16 131, i16 279 }, %struct.attrib_rt { i16 243, i16 0 }, %struct.attrib_rt { i16 242, i16 281 }, %struct.attrib_rt { i16 37, i16 0 }, %struct.attrib_rt { i16 36, i16 283 }, %struct.attrib_rt { i16 315, i16 0 }, %struct.attrib_rt { i16 277, i16 0 }, %struct.attrib_rt { i16 319, i16 0 }, %struct.attrib_rt { i16 314, i16 0 }, %struct.attrib_rt { i16 132, i16 0 }, %struct.attrib_rt { i16 133, i16 0 }, %struct.attrib_rt { i16 126, i16 0 }, %struct.attrib_rt { i16 122, i16 289 }, %struct.attrib_rt { i16 172, i16 0 }, %struct.attrib_rt { i16 132, i16 190 }, %struct.attrib_rt { i16 312, i16 0 }, %struct.attrib_rt { i16 316, i16 0 }, %struct.attrib_rt { i16 318, i16 0 }, %struct.attrib_rt { i16 316, i16 297 }, %struct.attrib_rt { i16 135, i16 0 }, %struct.attrib_rt { i16 266, i16 0 }, %struct.attrib_rt { i16 250, i16 300 }, %struct.attrib_rt { i16 125, i16 0 }, %struct.attrib_rt { i16 266, i16 257 }, %struct.attrib_rt { i16 143, i16 0 }, %struct.attrib_rt { i16 268, i16 0 }, %struct.attrib_rt { i16 134, i16 0 }, %struct.attrib_rt { i16 145, i16 0 }, %struct.attrib_rt { i16 221, i16 0 }, %struct.attrib_rt { i16 146, i16 0 }, %struct.attrib_rt { i16 298, i16 0 }, %struct.attrib_rt { i16 258, i16 0 }, %struct.attrib_rt { i16 269, i16 0 }, %struct.attrib_rt { i16 303, i16 0 }, %struct.attrib_rt { i16 322, i16 0 }, %struct.attrib_rt { i16 321, i16 0 }, %struct.attrib_rt { i16 256, i16 0 }, %struct.attrib_rt { i16 254, i16 316 }, %struct.attrib_rt { i16 127, i16 0 }, %struct.attrib_rt { i16 291, i16 0 }, %struct.attrib_rt { i16 170, i16 0 }, %struct.attrib_rt { i16 299, i16 0 }, %struct.attrib_rt { i16 14, i16 0 }, %struct.attrib_rt { i16 2, i16 322 }, %struct.attrib_rt { i16 27, i16 323 }, %struct.attrib_rt { i16 26, i16 324 }, %struct.attrib_rt { i16 26, i16 323 }, %struct.attrib_rt { i16 110, i16 0 }, %struct.attrib_rt { i16 264, i16 0 }, %struct.attrib_rt { i16 298, i16 257 }, %struct.attrib_rt { i16 167, i16 0 }, %struct.attrib_rt { i16 109, i16 0 }, %struct.attrib_rt { i16 85, i16 0 }, %struct.attrib_rt { i16 188, i16 0 }, %struct.attrib_rt { i16 188, i16 154 }, %struct.attrib_rt { i16 112, i16 0 }, %struct.attrib_rt { i16 181, i16 0 }, %struct.attrib_rt { i16 182, i16 336 }, %struct.attrib_rt { i16 280, i16 0 }, %struct.attrib_rt { i16 281, i16 0 }, %struct.attrib_rt { i16 257, i16 0 }, %struct.attrib_rt { i16 226, i16 340 }, %struct.attrib_rt { i16 260, i16 0 }, %struct.attrib_rt { i16 261, i16 0 }, %struct.attrib_rt { i16 260, i16 343 }, %struct.attrib_rt { i16 100, i16 0 }, %struct.attrib_rt { i16 283, i16 0 }, %struct.attrib_rt { i16 192, i16 0 }, %struct.attrib_rt { i16 22, i16 0 }, %struct.attrib_rt { i16 22, i16 142 }, %struct.attrib_rt { i16 22, i16 153 }, %struct.attrib_rt { i16 22, i16 155 }, %struct.attrib_rt { i16 246, i16 0 }, %struct.attrib_rt { i16 91, i16 0 }, %struct.attrib_rt { i16 156, i16 0 }, %struct.attrib_rt { i16 156, i16 153 }, %struct.attrib_rt { i16 214, i16 0 }, %struct.attrib_rt { i16 216, i16 0 }, %struct.attrib_rt { i16 308, i16 0 }, %struct.attrib_rt { i16 309, i16 358 }, %struct.attrib_rt { i16 239, i16 0 }, %struct.attrib_rt { i16 289, i16 0 }, %struct.attrib_rt { i16 222, i16 0 }, %struct.attrib_rt { i16 275, i16 0 }, %struct.attrib_rt { i16 270, i16 0 }, %struct.attrib_rt { i16 168, i16 0 }, %struct.attrib_rt { i16 248, i16 0 }, %struct.attrib_rt { i16 274, i16 0 }, %struct.attrib_rt { i16 161, i16 0 }, %struct.attrib_rt { i16 284, i16 0 }, %struct.attrib_rt { i16 169, i16 0 }, %struct.attrib_rt { i16 195, i16 0 }, %struct.attrib_rt { i16 196, i16 371 }, %struct.attrib_rt { i16 302, i16 0 }, %struct.attrib_rt { i16 63, i16 0 }, %struct.attrib_rt { i16 193, i16 142 }, %struct.attrib_rt { i16 99, i16 0 }, %struct.attrib_rt { i16 271, i16 0 }, %struct.attrib_rt { i16 273, i16 0 }, %struct.attrib_rt { i16 144, i16 0 }, %struct.attrib_rt { i16 129, i16 0 }, %struct.attrib_rt { i16 124, i16 0 }, %struct.attrib_rt { i16 296, i16 0 }, %struct.attrib_rt { i16 297, i16 0 }, %struct.attrib_rt { i16 79, i16 0 }, %struct.attrib_rt { i16 313, i16 0 }, %struct.attrib_rt { i16 317, i16 0 }, %struct.attrib_rt { i16 252, i16 0 }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat0(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp slt i32 %19, 4
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat6(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %13
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
define internal i32 @autohelperowl_attackpat11(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %14
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
  %27 = call i32 (i32, i32, i32, ...) @somewhere(i32 %25, i32 0, i32 1, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i32, i32, i32, ...) @somewhere(i32 %30, i32 0, i32 1, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %4
  %36 = phi i1 [ true, %4 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat14(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %13
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
define internal i32 @autohelperowl_attackpat17(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %14
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
  %28 = call i32 (i32, i32, i32, ...) @somewhere(i32 %25, i32 0, i32 2, i32 %26, i32 %27)
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat18(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 1, i32 2, i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %38, %4
  %49 = phi i1 [ true, %4 ], [ %47, %38 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat27(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 3, %18
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i32, i32, i32, ...) @somewhere(i32 %19, i32 0, i32 1, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load i32, i32* @stackp, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %29, i32 0, i32 16
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %30, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @attack(i32 %34, i32* null)
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i32 [ %32, %26 ], [ %35, %33 ]
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %4
  %40 = phi i1 [ true, %4 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat28(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %13
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
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat31(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat32(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @owl_escape_value(i32 %18)
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat34(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat37(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat39(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat40(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 0, i32 3, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat42(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 3, %61
  %63 = call i32 @accuratelib(i32 %60, i32 %62, i32 20, i32* null)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %69, label %65

65:                                               ; preds = %4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @countlib(i32 %66)
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %98

69:                                               ; preds = %65, %4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @countlib(i32 %70)
  %72 = icmp sle i32 %71, 3
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @accuratelib(i32 %74, i32 %75, i32 20, i32* null)
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %98

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %79, i32 1, i32 6, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %90, i32 0, i32 4, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %89, %78, %73, %69, %65
  %99 = phi i1 [ false, %78 ], [ false, %73 ], [ false, %69 ], [ false, %65 ], [ %97, %89 ]
  %100 = zext i1 %99 to i32
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat43(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @owl_escape_value(i32 %39)
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @owl_escape_value(i32 %43)
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %47, i32 1, i32 2, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %42
  %55 = phi i1 [ true, %42 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat44(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_escape_value(i32 %18)
  %20 = icmp slt i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat46(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp sle i32 %26, 3
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
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
define internal i32 @autohelperowl_attackpat47(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat49(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %21
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
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 2, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 3, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %41, i32 0, i32 3, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %39, %4
  %51 = phi i1 [ true, %4 ], [ %49, %39 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat50(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_escape_value(i32 %18)
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat51(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %29, i32 1, i32 3, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %28, %4
  %38 = phi i1 [ false, %4 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat52(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %19, i32 1, i32 1, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat53(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @owl_escape_value(i32 %34)
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @owl_escape_value(i32 %37)
  %39 = add nsw i32 %36, %38
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat54(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %14
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
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @owl_escape_value(i32 %27)
  %29 = add nsw i32 %26, %28
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat55(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %14
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
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @owl_escape_value(i32 %27)
  %29 = add nsw i32 %26, %28
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat56(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_escape_value(i32 %18)
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat57(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @owl_escape_value(i32 %27)
  %29 = add nsw i32 %26, %28
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat59(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 1, i32 4, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat63(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %13, i32 1, i32 1, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat64(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @owl_goal_dragon(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat67(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %25, i32 0, i32 2, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 2, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %32, %4
  %41 = phi i1 [ false, %4 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat68(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %25, i32 0, i32 2, i32 %26, i32 %27, i32 %28, i32 %29)
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat69(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp sle i32 %19, 2
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 3, %23
  %25 = call i32 @accuratelib(i32 %22, i32 %24, i32 20, i32* null)
  %26 = icmp sgt i32 %25, 2
  br label %27

27:                                               ; preds = %21, %4
  %28 = phi i1 [ true, %4 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat70(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %46, i32 0, i32 4, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %56, i32 0, i32 4, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %55, %4
  %66 = phi i1 [ false, %4 ], [ %64, %55 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat71(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %30
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
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @owl_escape_value(i32 %53)
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %57, i32 0, i32 4, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %67, i32 0, i32 4, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %66, %56, %4
  %77 = phi i1 [ false, %56 ], [ false, %4 ], [ %75, %66 ]
  %78 = zext i1 %77 to i32
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat73(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat74(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %16
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
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @owl_escape_value(i32 %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 3, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i32, i32, ...) @somewhere(i32 %44, i32 0, i32 2, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i32, i32, ...) @somewhere(i32 %50, i32 0, i32 2, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32, i32, i32, ...) @somewhere(i32 %56, i32 0, i32 1, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 3, %62
  %64 = call i32 @safe_move(i32 %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %60, %55
  %68 = phi i1 [ false, %55 ], [ %66, %60 ]
  br label %69

69:                                               ; preds = %67, %49, %42
  %70 = phi i1 [ true, %49 ], [ true, %42 ], [ %68, %67 ]
  br label %71

71:                                               ; preds = %69, %4
  %72 = phi i1 [ false, %4 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  ret i32 %73
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat75(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %17
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
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 3, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %51, i32 1, i32 4, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %61, i32 0, i32 4, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %59, %49
  %71 = phi i1 [ true, %49 ], [ %69, %59 ]
  br label %72

72:                                               ; preds = %70, %4
  %73 = phi i1 [ false, %4 ], [ %71, %70 ]
  %74 = zext i1 %73 to i32
  ret i32 %74
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat77(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 687), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 724), i64 0, i64 %35
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
  %51 = call i32 (i32, i32, i32, ...) @somewhere(i32 %46, i32 0, i32 4, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @owl_escape_value(i32 %54)
  %56 = icmp sgt i32 %55, 0
  br label %57

57:                                               ; preds = %53, %4
  %58 = phi i1 [ false, %4 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat78(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @owl_escape_value(i32 %34)
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @owl_escape_value(i32 %37)
  %39 = add nsw i32 %36, %38
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat79(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_escape_value(i32 %18)
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat80(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 794), i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 831), i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 832), i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @owl_escape_value(i32 %81)
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %118

84:                                               ; preds = %4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i32 (i32, i32, i32, ...) @somewhere(i32 %85, i32 0, i32 3, i32 %86, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = call i32 (i32, i32, i32, ...) @somewhere(i32 %92, i32 0, i32 6, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %91, %84
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 (i32, i32, i32, ...) @somewhere(i32 %102, i32 0, i32 1, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @owl_escape_value(i32 %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @owl_escape_value(i32 %111)
  %113 = icmp eq i32 %112, 0
  br label %114

114:                                              ; preds = %110, %106, %101
  %115 = phi i1 [ false, %106 ], [ false, %101 ], [ %113, %110 ]
  br label %116

116:                                              ; preds = %114, %91
  %117 = phi i1 [ true, %91 ], [ %115, %114 ]
  br label %118

118:                                              ; preds = %116, %4
  %119 = phi i1 [ false, %4 ], [ %117, %116 ]
  %120 = zext i1 %119 to i32
  ret i32 %120
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat81(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 794), i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 650), i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 687), i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @owl_escape_value(i32 %81)
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 (i32, i32, i32, ...) @somewhere(i32 %85, i32 0, i32 5, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 (i32, i32, i32, ...) @somewhere(i32 %94, i32 0, i32 4, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %93, %84, %4
  %102 = phi i1 [ false, %84 ], [ false, %4 ], [ %100, %93 ]
  %103 = zext i1 %102 to i32
  ret i32 %103
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat82(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 572), i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 (i32, i32, i32, ...) @somewhere(i32 %74, i32 0, i32 1, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 (i32, i32, i32, ...) @somewhere(i32 %79, i32 0, i32 1, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %17, align 4
  %86 = call i32 (i32, i32, i32, ...) @somewhere(i32 %84, i32 0, i32 1, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %83, %4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %89, i32 1, i32 7, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %101, i32 1, i32 5, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %100, %88, %83, %78
  %112 = phi i1 [ false, %88 ], [ false, %83 ], [ false, %78 ], [ %110, %100 ]
  %113 = zext i1 %112 to i32
  ret i32 %113
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat83(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 796), i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 760), i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 797), i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (i32, i32, i32, ...) @somewhere(i32 %88, i32 0, i32 4, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @owl_escape_value(i32 %96)
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %19, align 4
  %107 = call i32 (i32, i32, i32, ...) @somewhere(i32 %100, i32 0, i32 6, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %99, %95, %4
  %110 = phi i1 [ false, %95 ], [ false, %4 ], [ %108, %99 ]
  %111 = zext i1 %110 to i32
  ret i32 %111
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat84(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 830), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 831), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 832), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @owl_escape_value(i32 %53)
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @owl_escape_value(i32 %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @owl_escape_value(i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @owl_escape_value(i32 %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 (i32, i32, i32, ...) @somewhere(i32 %69, i32 0, i32 2, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %68, %64, %60, %56, %4
  %75 = phi i1 [ false, %64 ], [ false, %60 ], [ false, %56 ], [ false, %4 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat85(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 0, i32 2, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %4
  %44 = phi i1 [ false, %4 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat87(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @owl_escape_value(i32 %34)
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @owl_escape_value(i32 %37)
  %39 = add nsw i32 %36, %38
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat88(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat89(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 0, i32 2, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %4
  %44 = phi i1 [ false, %4 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat90(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 0, i32 2, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %4
  %44 = phi i1 [ false, %4 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat91(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %35
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
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 3, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %51, i32 0, i32 3, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %49, %4
  %61 = phi i1 [ false, %4 ], [ %59, %49 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat92(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %14
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
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat93(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @owl_goal_dragon(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 3, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %30, i32 0, i32 1, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %28, %4
  %38 = phi i1 [ false, %4 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat94(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_goal_dragon(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 3, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %30, i32 0, i32 1, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %28, %4
  %38 = phi i1 [ false, %4 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat95(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_escape_value(i32 %18)
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat96(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_escape_value(i32 %18)
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat98(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
define internal i32 @autohelperowl_attackpat105(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp sle i32 %26, 3
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 3, %30
  %32 = call i32 @accuratelib(i32 %29, i32 %31, i32 20, i32* null)
  %33 = icmp sle i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 2, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %28, %4
  %42 = phi i1 [ false, %28 ], [ false, %4 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat107(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_eyespace(i32 %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat110(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %16
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 1, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %45, i32 1, i32 4, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %44, %4
  %55 = phi i1 [ false, %4 ], [ %53, %44 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat112(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat113(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %62, label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @attack(i32 %43, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @owl_proper_eye(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 3, %51
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i32, i32, i32, ...) @somewhere(i32 %52, i32 0, i32 1, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @owl_proper_eye(i32 %57)
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i1 [ true, %50 ], [ %59, %56 ]
  br label %62

62:                                               ; preds = %60, %46, %42, %34
  %63 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %34 ], [ %61, %60 ]
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat114(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @owl_eyespace(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %4
  %29 = load i32, i32* @stackp, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %34, i32 0, i32 16
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @attack(i32 %39, i32* null)
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ %37, %31 ], [ %40, %38 ]
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %4
  %46 = phi i1 [ false, %4 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat117(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %21
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
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %36, i32 1, i32 3, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %35, %4
  %45 = phi i1 [ false, %4 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat118(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 1, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = call i32 @obvious_false_eye(i32 %31, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %30, %4
  %38 = phi i1 [ false, %4 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat119(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 2, i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @owl_eyespace(i32 %32)
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %4
  %36 = phi i1 [ false, %4 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat120(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %52

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @countstones(i32 %36)
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 1, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = call i32 @obvious_false_eye(i32 %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %45, %39, %35, %4
  %53 = phi i1 [ false, %39 ], [ false, %35 ], [ false, %4 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat122(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %13
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
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat123(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat124(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat125(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat126(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat127(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat128(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %67, label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @attack(i32 %43, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i32, i32, i32, ...) @somewhere(i32 %48, i32 0, i32 1, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 3, %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32, i32, i32, ...) @somewhere(i32 %54, i32 0, i32 1, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32, i32, i32, ...) @somewhere(i32 %59, i32 0, i32 1, i32 %60)
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i1 [ false, %52 ], [ %62, %58 ]
  br label %65

65:                                               ; preds = %63, %46
  %66 = phi i1 [ true, %46 ], [ %64, %63 ]
  br label %67

67:                                               ; preds = %65, %42, %34
  %68 = phi i1 [ false, %42 ], [ false, %34 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat129(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %13
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
define internal i32 @autohelperowl_attackpat130(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %25, i32 0, i32 2, i32 %26, i32 %27, i32 %28, i32 %29)
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat132(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat133(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat136(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = call i32 @owl_eyespace(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 3, %30
  %32 = call i32 @accuratelib(i32 %29, i32 %31, i32 20, i32* null)
  %33 = icmp sle i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 2, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %28, %4
  %42 = phi i1 [ false, %28 ], [ false, %4 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat137(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 @owl_topological_eye(i32 %32, i32 %37)
  %39 = icmp sle i32 %38, 2
  br i1 %39, label %40, label %49

40:                                               ; preds = %4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 @owl_topological_eye(i32 %41, i32 %46)
  %48 = icmp eq i32 %47, 2
  br label %49

49:                                               ; preds = %40, %4
  %50 = phi i1 [ false, %4 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat138(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 @owl_topological_eye(i32 %32, i32 %37)
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %60

40:                                               ; preds = %4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 @owl_topological_eye(i32 %41, i32 %46)
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %58, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 @owl_topological_eye(i32 %50, i32 %55)
  %57 = icmp eq i32 %56, 3
  br label %58

58:                                               ; preds = %49, %40
  %59 = phi i1 [ true, %40 ], [ %57, %49 ]
  br label %60

60:                                               ; preds = %58, %4
  %61 = phi i1 [ false, %4 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat139(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 @owl_topological_eye(i32 %25, i32 %30)
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @does_attack(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %4
  %39 = phi i1 [ false, %4 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat140(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 @owl_topological_eye(i32 %32, i32 %37)
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %58

40:                                               ; preds = %4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @safe_move(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @safe_move(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 3, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %52, i32 1, i32 2, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %50, %45, %40, %4
  %59 = phi i1 [ false, %45 ], [ false, %40 ], [ false, %4 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat141(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 @owl_topological_eye(i32 %36, i32 %41)
  %43 = icmp eq i32 %42, 3
  br label %44

44:                                               ; preds = %35, %4
  %45 = phi i1 [ false, %4 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat144(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 644), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @stackp, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %30, i32 0, i32 16
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %31, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %39

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @attack(i32 %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35, %27
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 3, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %41, i32 1, i32 1, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %39, %35, %27
  %47 = phi i1 [ false, %35 ], [ false, %27 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat145(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat146(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 760), i64 0, i64 %14
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
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @owl_eyespace(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @owl_proper_eye(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @stackp, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %38, i32 0, i32 16
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %39, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @attack(i32 %43, i32* null)
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i32 [ %41, %35 ], [ %44, %42 ]
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %28, %4
  %50 = phi i1 [ false, %28 ], [ false, %4 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat147(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 3, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %19, i32 1, i32 1, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat148(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = call i32 @owl_big_eyespace(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %29, i32 1, i32 1, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %28, %4
  %35 = phi i1 [ false, %4 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat149(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat152(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %27, label %32, label %39

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @attack(i32 %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %32, %28, %20
  %40 = phi i1 [ false, %28 ], [ false, %20 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat153(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @does_attack(i32 %18, i32 %19)
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat158(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp sgt i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat159(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = call i32 @owl_eyespace(i32 %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat160(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
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
  %34 = icmp sle i32 %33, 3
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @owl_proper_eye(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @owl_proper_eye(i32 %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %39, %35, %4
  %44 = phi i1 [ false, %35 ], [ false, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat162(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
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
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @countlib(i32 %40)
  %42 = icmp sle i32 %41, 2
  br label %43

43:                                               ; preds = %39, %35, %4
  %44 = phi i1 [ false, %35 ], [ false, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat163(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
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
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sle i32 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @countlib(i32 %40)
  %42 = icmp sle i32 %41, 2
  br label %43

43:                                               ; preds = %39, %35, %4
  %44 = phi i1 [ false, %35 ], [ false, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat165(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @countlib(i32 %29)
  %31 = icmp sgt i32 %30, 1
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat167(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
define internal i32 @autohelperowl_attackpat168(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = call i32 @accuratelib(i32 %18, i32 %20, i32 20, i32* null)
  %22 = icmp eq i32 %21, 2
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat170(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 3, %19
  %21 = call i32 @obvious_false_eye(i32 %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat171(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat173(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @safe_move(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %4
  %35 = phi i1 [ false, %4 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat174(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @safe_move(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat175(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i32, i32, ...) @somewhere(i32 %25, i32 0, i32 2, i32 %26, i32 %27)
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat179(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
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
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @owl_escape_value(i32 %36)
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 1, i32 1, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %39, %35
  %48 = phi i1 [ false, %35 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat180(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %18, i32 1, i32 1, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat181(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @safe_move(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %30, i32 1, i32 3, i32 %31, i32 0, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %38, i32 1, i32 2, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %37, %29, %4
  %46 = phi i1 [ false, %29 ], [ false, %4 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat182(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @safe_move(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %30, i32 1, i32 3, i32 %31, i32 0, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %29, %4
  %39 = phi i1 [ false, %4 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat183(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 3, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %37, i32 1, i32 2, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %35, %4
  %45 = phi i1 [ false, %4 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat184(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %21
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
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 3, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %37, i32 1, i32 2, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %35, %4
  %45 = phi i1 [ false, %4 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat186(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp sle i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat187(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat188(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @owl_escape_value(i32 %36)
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 2, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i1 [ false, %35 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat189(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %19, i32 1, i32 2, i32 %20, i32 %21, i32 %22)
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat190(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 2, i32 %26, i32 %27, i32 %28)
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat191(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %14
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
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat192(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %14
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
  %27 = call i32 @safe_move(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @countlib(i32 %30)
  %32 = icmp sgt i32 %31, 1
  br label %33

33:                                               ; preds = %29, %4
  %34 = phi i1 [ false, %4 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat193(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 0, i32 3, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %45, i32 0, i32 3, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %44, %35, %4
  %54 = phi i1 [ false, %35 ], [ false, %4 ], [ %52, %44 ]
  %55 = zext i1 %54 to i32
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat194(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 572), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @somewhere(i32 %26, i32 0, i32 2, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @owl_escape_value(i32 %34)
  %36 = add nsw i32 %33, %35
  %37 = icmp sgt i32 %36, 0
  br label %38

38:                                               ; preds = %31, %4
  %39 = phi i1 [ false, %4 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat195(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %23
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
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49, %4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 0, i32 4, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %53, %49
  %64 = phi i1 [ false, %49 ], [ %62, %53 ]
  %65 = zext i1 %64 to i32
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat196(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %23
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
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49, %4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 0, i32 4, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %53, %49
  %64 = phi i1 [ false, %49 ], [ %62, %53 ]
  %65 = zext i1 %64 to i32
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat197(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %49, %4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 3, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i32, i32, ...) @somewhere(i32 %55, i32 0, i32 1, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %61, i32 1, i32 2, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %59, %53
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 3, %69
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i32, i32, i32, ...) @somewhere(i32 %70, i32 0, i32 1, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 3, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %76, i32 0, i32 3, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %74, %68
  %86 = phi i1 [ false, %68 ], [ %84, %74 ]
  br label %87

87:                                               ; preds = %85, %59
  %88 = phi i1 [ true, %59 ], [ %86, %85 ]
  br label %89

89:                                               ; preds = %87, %49
  %90 = phi i1 [ false, %49 ], [ %88, %87 ]
  %91 = zext i1 %90 to i32
  ret i32 %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat198(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %49, %4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 3, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i32, i32, ...) @somewhere(i32 %55, i32 0, i32 1, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %61, i32 1, i32 2, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %59, %53
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 3, %69
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i32, i32, i32, ...) @somewhere(i32 %70, i32 0, i32 1, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 3, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %76, i32 0, i32 3, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %74, %68
  %86 = phi i1 [ false, %68 ], [ %84, %74 ]
  br label %87

87:                                               ; preds = %85, %59
  %88 = phi i1 [ true, %59 ], [ %86, %85 ]
  br label %89

89:                                               ; preds = %87, %49
  %90 = phi i1 [ false, %49 ], [ %88, %87 ]
  %91 = zext i1 %90 to i32
  ret i32 %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat199(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 2, i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i32, i32, ...) @somewhere(i32 %32, i32 0, i32 1, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %37, i32 1, i32 2, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi i1 [ true, %31 ], [ %43, %36 ]
  br label %46

46:                                               ; preds = %44, %4
  %47 = phi i1 [ false, %4 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat201(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @owl_goal_dragon(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %64, i32 1, i32 5, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (i32, i32, i32, ...) @somewhere(i32 %75, i32 0, i32 1, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %80, i32 1, i32 5, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %79, %74
  %92 = phi i1 [ true, %74 ], [ %90, %79 ]
  br label %93

93:                                               ; preds = %91, %63, %4
  %94 = phi i1 [ false, %63 ], [ false, %4 ], [ %92, %91 ]
  %95 = zext i1 %94 to i32
  ret i32 %95
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat202(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 680), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 717), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 754), i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 791), i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 828), i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 829), i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 830), i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 831), i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 832), i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @owl_escape_value(i32 %74)
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @owl_escape_value(i32 %78)
  %80 = icmp sgt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = add nsw i32 %77, %81
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @owl_escape_value(i32 %83)
  %85 = icmp sgt i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = add nsw i32 %82, %86
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @owl_escape_value(i32 %88)
  %90 = icmp sgt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = add nsw i32 %87, %91
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @owl_escape_value(i32 %93)
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = add nsw i32 %92, %96
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @owl_escape_value(i32 %98)
  %100 = icmp sgt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = add nsw i32 %97, %101
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @owl_escape_value(i32 %103)
  %105 = icmp sgt i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = add nsw i32 %102, %106
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @owl_escape_value(i32 %108)
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = add nsw i32 %107, %111
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @owl_escape_value(i32 %113)
  %115 = icmp sgt i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = add nsw i32 %112, %116
  %118 = icmp slt i32 %117, 2
  %119 = zext i1 %118 to i32
  ret i32 %119
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat203(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
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
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @owl_escape_value(i32 %32)
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 3, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %37, i32 1, i32 2, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %35, %4
  %45 = phi i1 [ false, %4 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat204(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i32, i32, ...) @play_break_through_n(i32 %33, i32 2, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp eq i32 %39, 5
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat205(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sle i32 %33, 4
  br i1 %34, label %35, label %49

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp sle i32 %37, 4
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 3, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i32, ...) @play_break_through_n(i32 %41, i32 2, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp eq i32 %47, 5
  br label %49

49:                                               ; preds = %39, %35, %4
  %50 = phi i1 [ false, %35 ], [ false, %4 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat206(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @vital_chain(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @vital_chain(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %34, i32 0, i32 1, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %32, %28, %4
  %42 = phi i1 [ false, %28 ], [ false, %4 ], [ %40, %32 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat207(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %21
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
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 0, i32 3, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat208(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %21
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
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 2, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 0, i32 1, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %39, %4
  %47 = phi i1 [ false, %4 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat209(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @attack(i32 %43, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %48, i32 1, i32 2, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %46, %42, %34
  %55 = phi i1 [ false, %42 ], [ false, %34 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat210(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %21
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
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %68, label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @attack(i32 %43, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* @stackp, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %52, i32 0, i32 16
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %68

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @attack(i32 %58, i32* null)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57, %49
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %62, i32 0, i32 1, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %61, %57, %49, %42, %34
  %69 = phi i1 [ false, %57 ], [ false, %49 ], [ false, %42 ], [ false, %34 ], [ %67, %61 ]
  %70 = zext i1 %69 to i32
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat211(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = call i32 @vital_chain(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @vital_chain(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %34, i32 0, i32 1, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %32, %28, %4
  %42 = phi i1 [ false, %28 ], [ false, %4 ], [ %40, %32 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat212(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %59

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @vital_chain(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @vital_chain(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %44, i32 1, i32 2, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 3, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %52, i32 0, i32 1, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %50, %43, %39, %35, %4
  %60 = phi i1 [ false, %43 ], [ false, %39 ], [ false, %35 ], [ false, %4 ], [ %58, %50 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat213(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %59

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @vital_chain(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @vital_chain(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %44, i32 1, i32 2, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 3, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %52, i32 0, i32 1, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %50, %43, %39, %35, %4
  %60 = phi i1 [ false, %43 ], [ false, %39 ], [ false, %35 ], [ false, %4 ], [ %58, %50 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat214(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @does_defend(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ false, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat215(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %21
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
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32, i32, i32, ...) @somewhere(i32 %32, i32 0, i32 2, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %4
  %38 = load i32, i32* @stackp, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %43, i32 0, i32 16
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %44, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @attack(i32 %48, i32* null)
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i32 [ %46, %40 ], [ %49, %47 ]
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %4
  %54 = phi i1 [ false, %4 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat218(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
define internal i32 @autohelperowl_attackpat219(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 687), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat220(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 650), i64 0, i64 %14
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat222(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %28
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
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @owl_escape_value(i32 %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @owl_goal_dragon(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %48, i32 0, i32 1, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %46, %42, %4
  %56 = phi i1 [ false, %42 ], [ false, %4 ], [ %54, %46 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat223(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 0, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat224(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 0, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat225(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %13
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
  br i1 %27, label %32, label %39

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @attack(i32 %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %32, %28, %20
  %40 = phi i1 [ false, %28 ], [ false, %20 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat226(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %17
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
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %49, %4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i32, i32, i32, ...) @somewhere(i32 %54, i32 0, i32 1, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 3, %59
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i32, i32, i32, ...) @somewhere(i32 %60, i32 0, i32 1, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @owl_escape_value(i32 %65)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64, %58, %53
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %69, i32 1, i32 3, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %68, %64, %49
  %79 = phi i1 [ false, %64 ], [ false, %49 ], [ %77, %68 ]
  %80 = zext i1 %79 to i32
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat227(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @same_string(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @countlib(i32 %37)
  %39 = icmp sle i32 %38, 4
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @countlib(i32 %41)
  %43 = icmp sle i32 %42, 4
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @countlib(i32 %45)
  %47 = icmp sle i32 %46, 4
  br label %48

48:                                               ; preds = %44, %40, %36
  %49 = phi i1 [ true, %40 ], [ true, %36 ], [ %47, %44 ]
  br label %50

50:                                               ; preds = %48, %4
  %51 = phi i1 [ false, %4 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat228(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @is_same_dragon(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %30, i32 1, i32 1, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %29, %4
  %38 = phi i1 [ false, %4 ], [ %36, %29 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat229(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @is_same_dragon(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %30, i32 1, i32 1, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %29, %4
  %38 = phi i1 [ false, %4 ], [ %36, %29 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat230(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %23
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
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49, %4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 3, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %55, i32 1, i32 3, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %53, %49
  %64 = phi i1 [ false, %49 ], [ %62, %53 ]
  %65 = zext i1 %64 to i32
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat231(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %23
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
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49, %4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 3, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %55, i32 1, i32 3, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %53, %49
  %64 = phi i1 [ false, %49 ], [ %62, %53 ]
  %65 = zext i1 %64 to i32
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat232(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %16
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
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @owl_escape_value(i32 %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @owl_escape_value(i32 %43)
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %47, i32 0, i32 2, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %46, %42
  %55 = phi i1 [ false, %42 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat233(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %23
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
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @owl_escape_value(i32 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @owl_escape_value(i32 %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @owl_escape_value(i32 %54)
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %49, %4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %58, i32 0, i32 2, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %57, %53
  %67 = phi i1 [ false, %53 ], [ %65, %57 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat235(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @vital_chain(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @vital_chain(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %34, i32 1, i32 1, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %32, %28, %4
  %41 = phi i1 [ false, %28 ], [ false, %4 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat236(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  br label %44

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @attack(i32 %42, i32* null)
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i32 [ %40, %34 ], [ %43, %41 ]
  %46 = icmp ne i32 %45, 5
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @countstones(i32 %48)
  %50 = icmp sle i32 %49, 2
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @does_attack(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51, %44
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @owl_goal_dragon(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @owl_goal_dragon(i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ true, %56 ], [ %64, %60 ]
  br label %67

67:                                               ; preds = %65, %51, %47
  %68 = phi i1 [ false, %51 ], [ false, %47 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat237(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  br label %44

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @attack(i32 %42, i32* null)
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i32 [ %40, %34 ], [ %43, %41 ]
  %46 = icmp ne i32 %45, 5
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @countstones(i32 %48)
  %50 = icmp sle i32 %49, 2
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @does_attack(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51, %44
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @owl_goal_dragon(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @owl_goal_dragon(i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ true, %56 ], [ %64, %60 ]
  br label %67

67:                                               ; preds = %65, %51, %47
  %68 = phi i1 [ false, %51 ], [ false, %47 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat238(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @owl_escape_value(i32 %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %43, i32 1, i32 1, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 3, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %48, %42, %4
  %58 = phi i1 [ false, %42 ], [ false, %4 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat239(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
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
define internal i32 @autohelperowl_attackpat241(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @countlib(i32 %29)
  %31 = icmp eq i32 %30, 1
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat242(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @countstones(i32 %18)
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @countlib(i32 %22)
  %24 = icmp eq i32 %23, 1
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat243(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @countstones(i32 %18)
  %20 = icmp sle i32 %19, 3
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @countlib(i32 %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @accuratelib(i32 %26, i32 %27, i32 20, i32* null)
  %29 = icmp sgt i32 %28, 1
  br label %30

30:                                               ; preds = %25, %21, %4
  %31 = phi i1 [ false, %21 ], [ false, %4 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat244(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @countstones(i32 %18)
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @does_attack(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %4
  %27 = phi i1 [ false, %4 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat245(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @countstones(i32 %18)
  %20 = icmp sle i32 %19, 3
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @does_attack(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @accuratelib(i32 %27, i32 %28, i32 20, i32* null)
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @is_ko_point(i32 %32)
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i1 [ true, %26 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %21, %4
  %38 = phi i1 [ false, %21 ], [ false, %4 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat246(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @does_attack(i32 %18, i32 %19)
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat248(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = call i32 @owl_proper_eye(i32 %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat249(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 643), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 644), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i32, i32, ...) @somewhere(i32 %25, i32 0, i32 2, i32 %26, i32 %27)
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat253(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %14
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
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 3, %30
  %32 = call i32 @obvious_false_eye(i32 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %4
  %36 = phi i1 [ false, %4 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat259(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 3, %30
  %32 = call i32 @obvious_false_eye(i32 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %4
  %36 = phi i1 [ false, %4 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat269(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 4
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
  %36 = icmp ne i32 %35, 5
  br label %37

37:                                               ; preds = %34, %4
  %38 = phi i1 [ false, %4 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat270(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 2
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
  %36 = icmp ne i32 %35, 5
  br label %37

37:                                               ; preds = %34, %4
  %38 = phi i1 [ false, %4 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat271(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %13
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
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat273(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat284(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp sle i32 %26, 3
  br i1 %27, label %28, label %44

28:                                               ; preds = %4
  %29 = load i32, i32* @stackp, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %34, i32 0, i32 18
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @find_defense(i32 %39, i32* null)
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ %37, %31 ], [ %40, %38 ]
  %43 = icmp ne i32 %42, 5
  br label %44

44:                                               ; preds = %41, %4
  %45 = phi i1 [ false, %4 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat285(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %13
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
define internal i32 @autohelperowl_attackpat286(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 0, i32 2, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat287(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %14
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
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i32, i32, ...) @somewhere(i32 %26, i32 0, i32 1, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @countlib(i32 %31)
  %33 = icmp sle i32 %32, 6
  br label %34

34:                                               ; preds = %30, %4
  %35 = phi i1 [ true, %4 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat289(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 1, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %31, i32 1, i32 1, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %30, %4
  %38 = phi i1 [ false, %4 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat290(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 1, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %31, i32 1, i32 1, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %30, %4
  %37 = phi i1 [ true, %4 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat291(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 3, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %47, i32 0, i32 2, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %46, %4
  %54 = phi i1 [ false, %4 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat303(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %14
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %48

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @countlib(i32 %29)
  %31 = icmp sle i32 %30, 3
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* @stackp, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %38, i32 0, i32 18
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %39, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @find_defense(i32 %43, i32* null)
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i32 [ %41, %35 ], [ %44, %42 ]
  %47 = icmp ne i32 %46, 5
  br label %48

48:                                               ; preds = %45, %28, %4
  %49 = phi i1 [ false, %28 ], [ false, %4 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat306(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @accuratelib(i32 %22, i32 %23, i32 20, i32* null)
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @finish_ko_helper(i32 %27)
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %26, %21, %4
  %31 = phi i1 [ false, %21 ], [ false, %4 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat307(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @accuratelib(i32 %22, i32 %23, i32 20, i32* null)
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @finish_ko_helper(i32 %27)
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %26, %21, %4
  %31 = phi i1 [ false, %21 ], [ false, %4 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat308(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat309(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @owl_escape_value(i32 %25)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @owl_escape_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat310(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 830), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
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
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @attack(i32 %43, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %48, i32 0, i32 1, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %46, %42, %34
  %55 = phi i1 [ false, %42 ], [ false, %34 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat311(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @safe_move(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %37, i32 0, i32 2, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %44, i32 1, i32 3, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %43, %36, %4
  %53 = phi i1 [ false, %36 ], [ false, %4 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat312(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 0, i32 3, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat313(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 0, i32 3, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat314(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 0, i32 3, i32 %26, i32 0, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat315(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 0, i32 3, i32 %26, i32 0, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat316(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 0, i32 3, i32 %26, i32 0, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat317(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 0, i32 3, i32 %26, i32 0, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat321(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %30
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
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @countlib(i32 %53)
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %82

56:                                               ; preds = %4
  %57 = load i32, i32* @stackp, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %62, i32 0, i32 16
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %63, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @attack(i32 %68, i32* null)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %72, i32 1, i32 5, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %71, %67, %59, %4
  %83 = phi i1 [ false, %67 ], [ false, %59 ], [ false, %4 ], [ %81, %71 ]
  %84 = zext i1 %83 to i32
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat322(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 794), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 6, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %64, i32 1, i32 1, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %63, %4
  %71 = phi i1 [ false, %4 ], [ %69, %63 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_attackpat323(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 797), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 760), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @countlib(i32 %46)
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %59

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %50, i32 0, i32 7, i32 %51, i32 0, i32 %52, i32 0, i32 %53, i32 0, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %49, %4
  %60 = phi i1 [ false, %4 ], [ %58, %49 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @somewhere(i32, i32, i32, ...) #1

declare dso_local i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local i32 @owl_escape_value(i32) #1

declare dso_local i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @owl_goal_dragon(i32) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @play_connect_n(i32, i32, i32, ...) #1

declare dso_local i32 @owl_eyespace(i32) #1

declare dso_local i32 @owl_proper_eye(i32) #1

declare dso_local i32 @obvious_false_eye(i32, i32) #1

declare dso_local i32 @countstones(i32) #1

declare dso_local i32 @owl_topological_eye(i32, i32) #1

declare dso_local i32 @does_attack(i32, i32) #1

declare dso_local i32 @owl_big_eyespace(i32) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @play_break_through_n(i32, i32, ...) #1

declare dso_local i32 @vital_chain(i32) #1

declare dso_local i32 @does_defend(i32, i32) #1

declare dso_local i32 @same_string(i32, i32) #1

declare dso_local i32 @is_same_dragon(i32, i32) #1

declare dso_local i32 @is_ko_point(i32) #1

declare dso_local i32 @finish_ko_helper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}