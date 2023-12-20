; ModuleID = 'owl_vital_apat.c'
source_filename = "owl_vital_apat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type { [80 x i8], i32, %struct.state_rt*, %struct.attrib_rt* }
%struct.state_rt = type { i16, [4 x i16] }
%struct.attrib_rt = type { i16, i16 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }

@owl_vital_apat = internal global [53 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat0, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 0, i32 721, [8 x i32] [i32 -50332672, i32 -50463696, i32 -50529264, i32 -50529280, i32 -50463744, i32 -50332656, i32 -50529232, i32 -50529280], [8 x i32] [i32 -2011068416, i32 -2011133936, i32 -2011133952, i32 -2011133952, i32 -2011133952, i32 -2011068416, i32 -2011133936, i32 -2011133952], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat0, i32 3, float 0x3FCE282400000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat1, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 10, i32 647, [8 x i32] [i32 -256, i32 -4, i32 -50529028, i32 -50529280, i32 -256, i32 -4, i32 -50529028, i32 -50529280], [8 x i32] [i32 153225728, i32 35817892, i32 -2145353624, i32 -2011168768, i32 -1994259968, i32 170002852, i32 2132072, i32 -2145353728], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat1, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat2, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 2, i32 3, i32 4, i32 10, i32 758, [8 x i32] [i32 -738197760, i32 -724740, i32 -57585, i32 1014824188, i32 -252379137, i32 -11328, i32 -58966788, i32 536870656], [8 x i32] [i32 -2128084992, i32 169877508, i32 10553610, i32 539000912, i32 538970646, i32 2654592, i32 -2145378240, i32 161546240], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat3, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 686, [8 x i32] [i32 -252379137, i32 -50540352, i32 -58967040, i32 536870656, i32 -788726784, i32 -724992, i32 -57585, i32 1014824188], [8 x i32] [i32 -1604302334, i32 1479049344, i32 -2078005248, i32 144741376, i32 -2144839680, i32 1247846400, i32 -1801451510, i32 673481728], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat4, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 10, i32 647, [8 x i32] [i32 -1057950492, i32 -51363840, i32 2084310016, i32 88014592, i32 1089534976, i32 -185548800, i32 -12712704, i32 205290604], [8 x i32] [i32 -2145349568, i32 -2006974464, i32 404752384, i32 2394368, i32 6326272, i32 -1876918272, i32 -1994129408, i32 136321028], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat5, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 2, i32 1, i32 4, i32 2, i32 759, [8 x i32] [i32 16580352, i32 -252645184, i32 -65536, i32 1010580540, i32 -252645136, i32 -262144, i32 1010580492, i32 16776960], [8 x i32] [i32 10754048, i32 543199232, i32 -1855324160, i32 405020708, i32 -1872748448, i32 413401088, i32 539236352, i32 6983936], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat5, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat6, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 1, i32 3, i32 2, i32 10, i32 648, [8 x i32] [i32 -51053568, i32 -8960, i32 -58917764, i32 -587400192, i32 -570425600, i32 -51053324, i32 -50537472, i32 -58917888], [8 x i32] [i32 1214257152, i32 375556096, i32 -1876655064, i32 -2010886144, i32 -2006837760, i32 408963232, i32 1344571392, i32 -2077978624], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat7, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 683, [8 x i32] [i32 1027555072, i32 16579828, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108992, i32 16579708, i32 -252645376], [8 x i32] [i32 136456448, i32 10520672, i32 -1608482816, i32 -2010644480, i32 -2002780160, i32 690096128, i32 2656292, i32 -2145345536], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat7, i32 3, float 0x3FA47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat8, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 721, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat8, i32 3, float 0x3FC6723240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat9, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 721, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat9, i32 3, float 0x3FD09D4960000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @owl_vital_apat10, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 3, i32 2, i32 5, i32 2, i32 722, [8 x i32] [i32 -251658496, i32 -50532112, i32 -50176, i32 1023212604, i32 -251855632, i32 -4096, i32 -50578372, i32 1023409920], [8 x i32] [i32 -1604689920, i32 1486364704, i32 613820416, i32 546870304, i32 546854944, i32 1616551936, i32 -1801969632, i32 680928256], i32 16777232, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat10, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @owl_vital_apat11, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 686, [8 x i32] [i32 1357970941, i32 -185286592, i32 -63171584, i32 260013824, i32 -1057688576, i32 -34582528, i32 2139033349, i32 339541244], [8 x i32] [i32 2123904, i32 1084260352, i32 -1541406720, i32 136840704, i32 -2136981504, i32 1746927616, i32 103286784, i32 2139144], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat12, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 10, i32 647, [8 x i32] [i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796], [8 x i32] [i32 -1607952316, i32 -2006409216, i32 -1734334464, i32 698648832, i32 -1603762176, i32 -1742168064, i32 -1985730304, i32 681613380], i32 16777232, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat12, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat13, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 648, [8 x i32] [i32 1023212544, i32 -251855872, i32 -50532352, i32 -50578432, i32 -50532352, i32 -50578432, i32 1023212544, i32 -251855872], [8 x i32] [i32 408953856, i32 279201792, i32 1613008896, i32 -2073554944, i32 1218711552, i32 610277376, i32 275284992, i32 -1876664320], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat13, i32 3, float 0x3FCE282400000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat14, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1010777856, i32 16579824, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108736, i32 16579644, i32 -252645376], [8 x i32] [i32 539105280, i32 6848544, i32 -1876942848, i32 144965632, i32 -2140667904, i32 404889600, i32 10749984, i32 539004928], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat14, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat15, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 1, i32 647, [8 x i32] [i32 -51056640, i32 -50586624, i32 1065352960, i32 -788726532, i32 486341884, i32 -252380160, i32 -50540544, i32 -8438016], [8 x i32] [i32 -2011168768, i32 136316928, i32 35686400, i32 -2145353720, i32 136317056, i32 2131968, i32 -2145353728, i32 -2011168256], i32 16777216, float 4.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat15, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat16, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 0, i32 721, [8 x i32] [i32 2147483392, i32 -184746756, i32 -50531328, i32 -50562048, i32 -50531328, i32 -33024, i32 2096954620, i32 -184747008], [8 x i32] [i32 689054208, i32 9963684, i32 537960448, i32 -2137522176, i32 144179200, i32 571615488, i32 9994344, i32 -1609555968], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat16, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat17, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 647, [8 x i32] [i32 -51318784, i32 -50590720, i32 1061158656, i32 -1057161988, i32 217906428, i32 -252642304, i32 -50544640, i32 -12632320], [8 x i32] [i32 -2078240768, i32 -2006973440, i32 438323712, i32 1076136072, i32 73435272, i32 -1876917248, i32 -2010890240, i32 1243617792], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat17, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat18, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 16646143, i32 -252645168, i32 -50593792, i32 1061109504, i32 -252645376, i32 -196608, i32 1061109535, i32 16579836], [8 x i32] [i32 6324384, i32 -1876951040, i32 136577024, i32 2234880, i32 2134016, i32 -2141192192, i32 438435840, i32 2361384], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat18, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat19, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 1, i32 4, i32 2, i32 0, i32 647, [8 x i32] [i32 -51315664, i32 -50344960, i32 -63112144, i32 -855639040, i32 -855639040, i32 -51315664, i32 -50344960, i32 -63112144], [8 x i32] [i32 -2011133920, i32 -2011002880, i32 -2011133920, i32 -2011002880, i32 -2011002880, i32 -2011133920, i32 -2011002880, i32 -2011133920], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat19, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat20, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 685, [8 x i32] [i32 15793404, i32 -252657664, i32 -63176704, i32 255803136, i32 -1057951744, i32 -51380224, i32 1061097216, i32 3996924], [8 x i32] [i32 9439232, i32 537952256, i32 -2145910784, i32 135274496, i32 -2146426880, i32 143654912, i32 537921536, i32 1605632], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat20, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat21, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 2, i32 647, [8 x i32] [i32 -252645376, i32 -50593792, i32 1061108992, i32 16579708, i32 16579828, i32 -252645376, i32 -50593792, i32 1027555072], [8 x i32] [i32 270532608, i32 2359296, i32 2101248, i32 6291456, i32 2359296, i32 2101248, i32 6291456, i32 270532608], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat21, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat22, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 1, i32 3, i32 3, i32 2, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -47185920, i32 255790855, i32 -1057963968, i32 -63963136, i32 255790848, i32 3210751], [8 x i32] [i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat22, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat23, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 721, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat23, i32 3, float 0x3FA16872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat24, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 6, i32 647, [8 x i32] [i32 1023212796, i32 -251855872, i32 -50532352, i32 -49408, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855620], [8 x i32] [i32 337680528, i32 -2140896256, i32 -1742712832, i32 1214581248, i32 -2073788416, i32 -1742728192, i32 174409728, i32 1344313368], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @owl_vital_apat25, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 0, i32 647, [8 x i32] [i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844], [8 x i32] [i32 -1842997088, i32 140939816, i32 -1839064928, i32 409371176, i32 -1838806880, i32 405180968, i32 -2107238240, i32 409113128], i32 16777232, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @owl_vital_apat26, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 0, i32 648, [8 x i32] [i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844], [8 x i32] [i32 -1842997088, i32 140939816, i32 -1839064928, i32 409371176, i32 -1838806880, i32 405180968, i32 -2107238240, i32 409113128], i32 16777232, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat27, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 15792125, i32 -252690240, i32 2084306944, i32 121585408, i32 1089531904, i32 -135266304, i32 1061095181, i32 3964156], [8 x i32] [i32 10486372, i32 538968192, i32 2621440, i32 19013888, i32 2105344, i32 44040192, i32 555876616, i32 2621540], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat27, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat28, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 -252183296, i32 -50540432, i32 -58967040, i32 486341632, i32 -788726784, i32 -34082816, i32 -50586572, i32 1014823936], [8 x i32] [i32 -1609423872, i32 144195616, i32 1611671552, i32 77103104, i32 1083705344, i32 605200384, i32 -2137521120, i32 672161792], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat28, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat29, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 722, [8 x i32] [i32 -50332416, i32 -50529168, i32 -50529280, i32 -50529280, i32 -50529280, i32 -33555456, i32 -50529228, i32 -50529280], [8 x i32] [i32 -1475190784, i32 1217923104, i32 605071360, i32 -2137488384, i32 144197632, i32 1611835392, i32 -2070380512, i32 -1475337216], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat30, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 722, [8 x i32] [i32 4194108, i32 -1057951504, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12648448, i32 205471548, i32 15793392], [8 x i32] [i32 2654760, i32 -2145378176, i32 144703488, i32 572655616, i32 539000832, i32 -2111307776, i32 136454664, i32 10487968], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat30, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat31, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 4, i32 759, [8 x i32] [i32 1061109507, i32 16580607, i32 -252645184, i32 -50593792, i32 -262144, i32 1061109519, i32 16579839, i32 -252645376], [8 x i32] [i32 404889600, i32 10750240, i32 539004992, i32 -2140667904, i32 161742848, i32 539105284, i32 6848544, i32 -1876942848], i32 16777232, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat32, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 4, i32 720, [8 x i32] [i32 1023212796, i32 -251855872, i32 -50532352, i32 -49408, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855620], [8 x i32] [i32 274761892, i32 -1876656128, i32 -2010902528, i32 157424128, i32 -2145087488, i32 -2006970368, i32 442632448, i32 270829672], i32 16777232, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat33, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 1, i32 3, i32 1, i32 4, i32 686, [8 x i32] [i32 205274172, i32 15793152, i32 -252657664, i32 -12648448, i32 -51380224, i32 1010568192, i32 4194048, i32 -1057951504], [8 x i32] [i32 136578056, i32 2119680, i32 1080066048, i32 -1776287744, i32 1478492160, i32 69470208, i32 2135552, i32 -2141175680], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat34, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 649, [8 x i32] [i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416, i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204], [8 x i32] [i32 546838564, i32 542679040, i32 -1869078528, i32 697704448, i32 -1604837376, i32 412622848, i32 546711808, i32 546869344], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat34, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat35, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 6, i32 722, [8 x i32] [i32 255803199, i32 15793404, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061097216, i32 4194303, i32 -1057951504], [8 x i32] [i32 169878052, i32 10487944, i32 539000832, i32 -2127953920, i32 144703488, i32 572525056, i32 2785672, i32 -2145378208], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat35, i32 3, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @owl_vital_apat36, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 2, i32 4, i32 3, i32 4, i32 721, [8 x i32] [i32 -49393, i32 1023410175, i32 -251855632, i32 -200704, i32 -50176, i32 1073741631, i32 -251854849, i32 -50532160], [8 x i32] [i32 -2036262902, i32 677545498, i32 -1876408160, i32 1243914240, i32 -2040387584, i32 413238826, i32 -1608234350, i32 1210617984], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat37, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 2, i32 796, [8 x i32] [i32 524287744, i32 -1057686276, i32 -51326976, i32 -58979328, i32 -51068928, i32 -12640512, i32 209517820, i32 -789513216], [8 x i32] [i32 153241600, i32 1075873828, i32 -2078244864, i32 -2011167744, i32 -2011152384, i32 1210190080, i32 69240928, i32 -2145352704], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat37, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_vital_apat38, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 0, i32 3, i32 2, i32 2, i32 647, [8 x i32] [i32 -252645376, i32 -50397184, i32 1061109040, i32 16579708, i32 16776436, i32 -252645328, i32 -50593792, i32 1027555072], [8 x i32] [i32 2097152, i32 2162688, i32 2097168, i32 2097152, i32 2162688, i32 2097168, i32 2097152, i32 2097152], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat38, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat39, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 4, i32 720, [8 x i32] [i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280], [8 x i32] [i32 -1876388864, i32 -2006687744, i32 1486886912, i32 610568192, i32 1617201152, i32 -1809281024, i32 -2006703104, i32 413161472], i32 16777232, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat39, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat40, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 0, i32 759, [8 x i32] [i32 1027555135, i32 16579828, i32 -252645376, i32 -65536, i32 -50593792, i32 1061108992, i32 16777087, i32 -252645136], [8 x i32] [i32 404758560, i32 10749952, i32 539004928, i32 -2140536832, i32 144965632, i32 538974208, i32 6979584, i32 -1876942816], i32 16777232, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat40, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat41, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 10749960, i32 539004928, i32 -2140667904, i32 438312960, i32 -1876942848, i32 144965632, i32 538974720, i32 6848640], i32 16777232, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat41, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat42, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 683, [8 x i32] [i32 -50529028, i32 -50529280, i32 -50529280, i32 -256, i32 -50529280, i32 -50529280, i32 -256, i32 -50529028], [8 x i32] [i32 -2011133848, i32 -2011133952, i32 -2011133952, i32 -1977448192, i32 -2011133952, i32 -2011133952, i32 -1994225152, i32 -2011133788], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat42, i32 3, float 0x3FFF5C2900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_vital_apat43, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 11014144, i32 543170560, i32 279445504, i32 539238400, i32 543170560, i32 279445504, i32 539238400, i32 11014144], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat43, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat44, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 722, [8 x i32] [i32 3878400, i32 11591856, i32 -525336576, i32 741867520, i32 -525336576, i32 775618560, i32 3681336, i32 11591680], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 16777232, float 5.700000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat44, i32 3, float 0x3FC9721500000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat45, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 721, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2103296, i32 6324224, i32 -1876951040, i32 136577024, i32 -2141192192, i32 404750336, i32 2361344, i32 2134016], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat45, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat46, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 0, i32 759, [8 x i32] [i32 -1057947904, i32 -51330880, i32 -62977024, i32 205323312, i32 -1057948624, i32 -999424, i32 -63173620, i32 205519872], [8 x i32] [i32 -2145352704, i32 -2011152384, i32 1210189824, i32 69240864, i32 1075873824, i32 -2078244864, i32 -2011167744, i32 136464384], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat46, i32 3, float 0x3FB5F45E00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat47, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 16777216, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat47, i32 0, float 0x3FF28F5C20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_vital_apat48, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 2, i32 1, i32 3, i32 9, i32 683, [8 x i32] [i32 -65536, i32 1010580540, i32 16579584, i32 -252645376, i32 1010580480, i32 16776960, i32 -252645136, i32 -50593792], [8 x i32] [i32 10551296, i32 538968080, i32 2621440, i32 2105344, i32 2105344, i32 10551296, i32 538968080, i32 2621440], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat49, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 3943424, i32 11595776, i32 -521142272, i32 1010302976, i32 -256901120, i32 742129664, i32 3685376, i32 15785984], [8 x i32] [i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat49, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @owl_vital_apat50, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 10, i32 685, [8 x i32] [i32 -788660992, i32 -34213808, i32 -50586604, i32 1014823936, i32 -252314368, i32 -33697712, i32 -58967020, i32 486341632], [8 x i32] [i32 1080590336, i32 -1809833984, i32 144966656, i32 538990592, i32 539005952, i32 -2140651520, i32 1478500352, i32 77858816], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat51, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 10, i32 682, [8 x i32] [i32 1061109055, i32 16777086, i32 -252645136, i32 -65536, i32 -65536, i32 1027555134, i32 16777207, i32 -252645136], [8 x i32] [i32 153225220, i32 2132260, i32 -2145353664, i32 -1994391552, i32 -1994391552, i32 136448260, i32 2132320, i32 -2145353664], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern zeroinitializer], align 16
@dfa_owl_vital_apat = internal global %struct.dfa_rt { [80 x i8] c"owl_vital_apat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, %struct.state_rt* getelementptr inbounds ([1127 x %struct.state_rt], [1127 x %struct.state_rt]* @state_owl_vital_apat, i32 0, i32 0), %struct.attrib_rt* getelementptr inbounds ([55 x %struct.attrib_rt], [55 x %struct.attrib_rt]* @idx_owl_vital_apat, i32 0, i32 0) }, align 8
@owl_vital_apat_db = dso_local global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([53 x %struct.pattern], [53 x %struct.pattern]* @owl_vital_apat, i32 0, i32 0), %struct.dfa_rt* @dfa_owl_vital_apat }, align 8
@owl_vital_apat0 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 682, i32 3 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"VA1\00", align 1
@owl_vital_apat1 = internal global [7 x %struct.patval] [%struct.patval { i32 645, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"VA2\00", align 1
@owl_vital_apat2 = internal global [6 x %struct.patval] [%struct.patval { i32 608, i32 1 }, %struct.patval { i32 645, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"VA3\00", align 1
@owl_vital_apat3 = internal global [7 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"VA4\00", align 1
@owl_vital_apat4 = internal global [5 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 723, i32 3 }], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"VA5\00", align 1
@owl_vital_apat5 = internal global [4 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"VA6\00", align 1
@owl_vital_apat6 = internal global [7 x %struct.patval] [%struct.patval { i32 645, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 719, i32 3 }], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"VA7\00", align 1
@owl_vital_apat7 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"VA8\00", align 1
@owl_vital_apat8 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"VA9\00", align 1
@owl_vital_apat9 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"VA10\00", align 1
@owl_vital_apat10 = internal global [9 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 796, i32 3 }], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"VA11\00", align 1
@owl_vital_apat11 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"VA12\00", align 1
@owl_vital_apat12 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"VA13\00", align 1
@owl_vital_apat13 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"VA14\00", align 1
@owl_vital_apat14 = internal global [4 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"VA15\00", align 1
@owl_vital_apat15 = internal global [5 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"VA16\00", align 1
@owl_vital_apat16 = internal global [7 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 646, i32 3 }], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"VA17\00", align 1
@owl_vital_apat17 = internal global [6 x %struct.patval] [%struct.patval { i32 683, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 609, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"VA18\00", align 1
@owl_vital_apat18 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"VA19\00", align 1
@owl_vital_apat19 = internal global [7 x %struct.patval] [%struct.patval { i32 682, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"VA20\00", align 1
@owl_vital_apat20 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"VA21\00", align 1
@owl_vital_apat21 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"VA22\00", align 1
@owl_vital_apat22 = internal global [2 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 611, i32 3 }], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"VA23\00", align 1
@owl_vital_apat23 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"VA24\00", align 1
@owl_vital_apat24 = internal global [4 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"VA25\00", align 1
@owl_vital_apat25 = internal global [12 x %struct.patval] [%struct.patval { i32 720, i32 7 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 649, i32 1 }], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"VA26\00", align 1
@owl_vital_apat26 = internal global [11 x %struct.patval] [%struct.patval { i32 682, i32 1 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"VA26b\00", align 1
@owl_vital_apat27 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"VA27\00", align 1
@owl_vital_apat28 = internal global [6 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.28 = private unnamed_addr constant [5 x i8] c"VA28\00", align 1
@owl_vital_apat29 = internal global [7 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"VA29\00", align 1
@owl_vital_apat30 = internal global [7 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.30 = private unnamed_addr constant [5 x i8] c"VA30\00", align 1
@owl_vital_apat31 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"VA31\00", align 1
@owl_vital_apat32 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.32 = private unnamed_addr constant [5 x i8] c"VA32\00", align 1
@owl_vital_apat33 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.33 = private unnamed_addr constant [5 x i8] c"VA33\00", align 1
@owl_vital_apat34 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 686, i32 1 }], align 16
@.str.34 = private unnamed_addr constant [5 x i8] c"VA34\00", align 1
@owl_vital_apat35 = internal global [6 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"VA35\00", align 1
@owl_vital_apat36 = internal global [10 x %struct.patval] [%struct.patval { i32 682, i32 1 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 756, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 760, i32 1 }], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"VA36\00", align 1
@owl_vital_apat37 = internal global [6 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.37 = private unnamed_addr constant [5 x i8] c"VA37\00", align 1
@owl_vital_apat38 = internal global [3 x %struct.patval] [%struct.patval { i32 646, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"VA38\00", align 1
@owl_vital_apat39 = internal global [5 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.39 = private unnamed_addr constant [5 x i8] c"VA39\00", align 1
@owl_vital_apat40 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.40 = private unnamed_addr constant [5 x i8] c"VA40\00", align 1
@owl_vital_apat41 = internal global [5 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"VA41\00", align 1
@owl_vital_apat42 = internal global [7 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.42 = private unnamed_addr constant [5 x i8] c"VA42\00", align 1
@owl_vital_apat43 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"VA43\00", align 1
@owl_vital_apat44 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"VA44\00", align 1
@owl_vital_apat45 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"VA45\00", align 1
@owl_vital_apat46 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.46 = private unnamed_addr constant [5 x i8] c"VA46\00", align 1
@owl_vital_apat47 = internal global [1 x %struct.patval] [%struct.patval { i32 685, i32 1 }], align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"VA47\00", align 1
@owl_vital_apat48 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"VA48\00", align 1
@owl_vital_apat49 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"VA49\00", align 1
@owl_vital_apat50 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"VA50\00", align 1
@owl_vital_apat51 = internal global [5 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"VA51\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@board = external dso_local global [421 x i8], align 16
@stackp = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@state_owl_vital_apat = internal constant [1127 x %struct.state_rt] [%struct.state_rt zeroinitializer, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 1, i16 2, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 3, i16 4, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 4, i16 5, i16 6, i16 7] }, %struct.state_rt { i16 0, [4 x i16] [i16 7, i16 7, i16 7, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 7, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 7, i16 0, i16 8, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 9, i16 10, i16 11] }, %struct.state_rt { i16 0, [4 x i16] [i16 11, i16 12, i16 13, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 13, i16 14, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 15, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 15, i16 0] }, %struct.state_rt { i16 11, [4 x i16] [i16 15, i16 16, i16 17, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 19, i16 20, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 22, i16 23, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 11, [4 x i16] [i16 25, i16 26, i16 27, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 29, i16 30, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 32, i16 33, i16 34] }, %struct.state_rt { i16 11, [4 x i16] [i16 34, i16 35, i16 36, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 0, i16 36, i16 0] }, %struct.state_rt { i16 11, [4 x i16] [i16 36, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 36, i16 37, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 37, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 37, i16 37, i16 37] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 36, i16 36, i16 36] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 38, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 39, i16 40, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 41, i16 42, i16 43, i16 44] }, %struct.state_rt { i16 0, [4 x i16] [i16 44, i16 45, i16 46, i16 43] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 46, i16 41, i16 42] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 47, i16 48, i16 47] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 46, i16 47, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 45, i16 46, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 49, i16 48] }, %struct.state_rt { i16 0, [4 x i16] [i16 49, i16 50, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 52, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 53, i16 49, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 53, i16 54, i16 55] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 37, i16 56, i16 37] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 36, i16 55, i16 36] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 35, i16 54, i16 35] }, %struct.state_rt { i16 0, [4 x i16] [i16 34, i16 34, i16 53, i16 34] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 56, i16 57, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 56, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 55, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 57, i16 58, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 58, i16 59, i16 58, i16 58] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 66, i16 67] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 67, i16 67, i16 68] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 68, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 58, i16 58, i16 68, i16 58] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 67] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 55, i16 56, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 64, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 54, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 67, i16 68] }, %struct.state_rt { i16 0, [4 x i16] [i16 68, i16 69, i16 69, i16 69] }, %struct.state_rt { i16 0, [4 x i16] [i16 69, i16 68, i16 70, i16 68] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 63, i16 63, i16 70] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 68, i16 64, i16 66, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 68, i16 68, i16 69, i16 70] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 70, i16 71] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 71, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 71, i16 71, i16 72, i16 73] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 67, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 69, i16 69, i16 70, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 72, i16 0, i16 65, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 72, i16 72, i16 73, i16 74] }, %struct.state_rt { i16 0, [4 x i16] [i16 35, i16 35, i16 35, i16 74] }, %struct.state_rt { i16 0, [4 x i16] [i16 74, i16 74, i16 74, i16 75] }, %struct.state_rt { i16 0, [4 x i16] [i16 33, i16 33, i16 33, i16 75] }, %struct.state_rt { i16 0, [4 x i16] [i16 75, i16 76, i16 32, i16 74] }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 76, i16 77, i16 78] }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 76, i16 76, i16 77] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 77, i16 78, i16 78] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 46, i16 46, i16 78] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 78, i16 79, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 77, i16 44, i16 44] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 78, i16 79, i16 79] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 79] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 79] }, %struct.state_rt { i16 0, [4 x i16] [i16 79, i16 79, i16 80, i16 80] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 81, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 82, i16 83, i16 82] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 81, i16 82, i16 81] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 82, i16 83, i16 82] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 83, i16 84, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 82, i16 83, i16 84] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 0, i16 85, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 84, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 83, i16 83, i16 83] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 83, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 82, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 84, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 84, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 85, i16 86, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 84, i16 86, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 87, i16 88, i16 89] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 90, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 90, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 90, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 90, i16 91, i16 92, i16 91] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 90, i16 93, i16 90] }, %struct.state_rt { i16 0, [4 x i16] [i16 88, i16 89, i16 93, i16 89] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 93, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 94, i16 95, i16 96] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 0, i16 96, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 96, i16 0, i16 97, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 89, i16 81, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 0, i16 96, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 96, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 75, i16 86, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 74, i16 85, i16 95, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 96, i16 72, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 72, i16 96, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 71, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 70, i16 94, i16 95, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 0, i16 95, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 81, i16 83, i16 83] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 0, i16 92, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 59, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 58, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 94, i16 61, i16 95, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 71, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 70, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 73, i16 71, i16 73, i16 73] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 68, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 92, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 69, i16 69, i16 69, i16 69] }, %struct.state_rt { i16 0, [4 x i16] [i16 90, i16 91, i16 92, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 90, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 89, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 54, i16 93, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 53, i16 93, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 79, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 78, i16 78, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 74, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 73, i16 73, i16 73, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 91, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 91, i16 87, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 90, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 0, i16 90, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 0, i16 84, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 88, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 30, i16 30, i16 89, i16 30] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 29, i16 88, i16 29] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 89, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 4, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 86, i16 0, i16 0] }, %struct.state_rt { i16 4, [4 x i16] [i16 86, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 85, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 86, i16 86, i16 86] }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 85, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 84, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 82, i16 82, i16 82] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 87, i16 88, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 88, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 78, i16 78, i16 78] }, %struct.state_rt { i16 15, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 76, i16 86, i16 76] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 83, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 85, i16 85, i16 85] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 85, i16 85, i16 85] }, %struct.state_rt { i16 15, [4 x i16] [i16 84, i16 84, i16 84, i16 84] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 82, i16 82, i16 82] }, %struct.state_rt { i16 15, [4 x i16] [i16 84, i16 82, i16 82, i16 82] }, %struct.state_rt { i16 15, [4 x i16] [i16 81, i16 84, i16 81, i16 81] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 0, i16 84] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 66, i16 66, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 0, i16 67, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 82, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 81, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 15, [4 x i16] [i16 81, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 81, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 81, i16 82, i16 81] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 82, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 0, i16 57, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 77, i16 77, i16 77] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 73, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 0, i16 78, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 0, i16 74, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 74, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 75, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 0, i16 72, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 74, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 41, i16 41, i16 73, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 73, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 73, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 38, i16 73, i16 38] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 70, i16 0] }, %struct.state_rt { i16 38, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 38, [4 x i16] [i16 71, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 71, i16 71, i16 71, i16 46] }, %struct.state_rt { i16 38, [4 x i16] [i16 45, i16 45, i16 45, i16 45] }, %struct.state_rt { i16 38, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 31, i16 69, i16 31] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 69, i16 69, i16 70, i16 69] }, %struct.state_rt { i16 15, [4 x i16] [i16 68, i16 68, i16 68, i16 68] }, %struct.state_rt { i16 38, [4 x i16] [i16 67, i16 67, i16 67, i16 67] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 64, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 65, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 66, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 66, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 65, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 66, i16 67, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 66, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 66, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 66, i16 66, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 0, i16 67, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 67, i16 55, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 66, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 67, i16 68, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 63, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 66, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 66, i16 67, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 58, i16 58, i16 58, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 64, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 43, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 49, i16 49, i16 63, i16 49] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 42, i16 42, i16 42] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 64, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 63, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 63, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 63, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 27, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 26, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 63, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 63, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 45, i16 45, i16 45, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 40] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 63, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 64, i16 63, i16 30] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 64, i16 28, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 64, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 62, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 52, i16 52, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 63, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 61, i16 64, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 63, i16 0, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 63, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 62, i16 53, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 60, i16 62, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 63, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 62, i16 61, i16 33] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 54, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 60, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 59, i16 59, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 40, i16 40, i16 40] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 59, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 28, i16 59, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 59, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 59, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 59, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 60, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 58, i16 60, i16 58] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 16, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 18, [4 x i16] [i16 59, i16 59, i16 59, i16 59] }, %struct.state_rt { i16 16, [4 x i16] [i16 58, i16 58, i16 58, i16 58] }, %struct.state_rt { i16 19, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 41, i16 41, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 18, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 56, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 0, i16 0, i16 55] }, %struct.state_rt { i16 0, [4 x i16] [i16 30, i16 30, i16 30, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 29, i16 29, i16 55] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 47, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 43, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 39, i16 39, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 36, i16 36, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 48, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 44, i16 44, i16 44] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 53, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 53, i16 40, i16 40] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 37, i16 37, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 27, i16 53, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 46, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 52, i16 53, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 53, i16 40, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 50, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 52, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 52, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 52, i16 43] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 52, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 52, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 52, i16 39, i16 39] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 36, i16 36, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 52, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 30, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 51, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 51, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 44, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 49, i16 50, i16 49, i16 49] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 50, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 50, i16 48] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 2, [4 x i16] zeroinitializer }, %struct.state_rt { i16 3, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 48, i16 48] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 46, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 17, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 47] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 46, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 47, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 39, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 47] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 47, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 45, i16 45, i16 47, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 35, i16 35, i16 45, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 0, i16 46, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 46, i16 46, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 46, i16 45, i16 45] }, %struct.state_rt { i16 28, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 45, i16 0] }, %struct.state_rt { i16 31, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 44, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 44, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 44, i16 0, i16 44, i16 0] }, %struct.state_rt { i16 35, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 43, i16 43] }, %struct.state_rt { i16 35, [4 x i16] [i16 23, i16 23, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 42, i16 41, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 42, i16 42, i16 42] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 41, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 41, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 35, [4 x i16] [i16 40, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 40, i16 40, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 48, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 39, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 0, i16 39, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 37, i16 38, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 38, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 0, i16 38, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 38, i16 38, i16 38] }, %struct.state_rt { i16 6, [4 x i16] zeroinitializer }, %struct.state_rt { i16 7, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 36, i16 0] }, %struct.state_rt { i16 13, [4 x i16] zeroinitializer }, %struct.state_rt { i16 13, [4 x i16] [i16 0, i16 0, i16 34, i16 0] }, %struct.state_rt { i16 14, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 33, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 13, [4 x i16] [i16 32, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 32] }, %struct.state_rt { i16 0, [4 x i16] [i16 32, i16 32, i16 32, i16 32] }, %struct.state_rt { i16 0, [4 x i16] [i16 32, i16 32, i16 32, i16 32] }, %struct.state_rt { i16 13, [4 x i16] [i16 31, i16 31, i16 31, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 31, i16 31, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 30, i16 30, i16 30, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 13, [4 x i16] [i16 30, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 30] }, %struct.state_rt { i16 32, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 29, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 29] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 29, i16 0] }, %struct.state_rt { i16 13, [4 x i16] [i16 0, i16 0, i16 28, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 28, i16 28, i16 28] }, %struct.state_rt { i16 42, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 27, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 27, i16 0] }, %struct.state_rt { i16 46, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 26, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 0, i16 26, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 26, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 26] }, %struct.state_rt { i16 43, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 24, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 24, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 23, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 49, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 22, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 45, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 21, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 20, i16 0, i16 0] }, %struct.state_rt { i16 34, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 19, i16 0] }, %struct.state_rt { i16 39, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 12, [4 x i16] zeroinitializer }, %struct.state_rt { i16 20, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 16] }, %struct.state_rt { i16 27, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 36, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 23, [4 x i16] zeroinitializer }, %struct.state_rt { i16 25, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 12] }, %struct.state_rt { i16 29, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 11] }, %struct.state_rt { i16 0, [4 x i16] [i16 11, i16 11, i16 11, i16 11] }, %struct.state_rt { i16 50, [4 x i16] zeroinitializer }, %struct.state_rt { i16 51, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 9, i16 9, i16 9, i16 9] }, %struct.state_rt { i16 53, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 0, i16 8, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 8, [4 x i16] zeroinitializer }, %struct.state_rt { i16 22, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 5, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 5, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 26, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 4, i16 4, i16 4, i16 4] }, %struct.state_rt { i16 40, [4 x i16] zeroinitializer }, %struct.state_rt { i16 52, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 2, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 33, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 1, i16 1, i16 1, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 1, i16 1, i16 1, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 1, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 1, [4 x i16] zeroinitializer }], align 16
@idx_owl_vital_apat = internal constant [55 x %struct.attrib_rt] [%struct.attrib_rt { i16 -1, i16 0 }, %struct.attrib_rt { i16 22, i16 0 }, %struct.attrib_rt { i16 20, i16 0 }, %struct.attrib_rt { i16 34, i16 0 }, %struct.attrib_rt { i16 47, i16 0 }, %struct.attrib_rt { i16 16, i16 0 }, %struct.attrib_rt { i16 29, i16 0 }, %struct.attrib_rt { i16 28, i16 0 }, %struct.attrib_rt { i16 10, i16 0 }, %struct.attrib_rt { i16 23, i16 0 }, %struct.attrib_rt { i16 8, i16 9 }, %struct.attrib_rt { i16 9, i16 10 }, %struct.attrib_rt { i16 15, i16 0 }, %struct.attrib_rt { i16 44, i16 0 }, %struct.attrib_rt { i16 46, i16 0 }, %struct.attrib_rt { i16 49, i16 0 }, %struct.attrib_rt zeroinitializer, %struct.attrib_rt { i16 42, i16 0 }, %struct.attrib_rt { i16 19, i16 0 }, %struct.attrib_rt { i16 19, i16 16 }, %struct.attrib_rt { i16 38, i16 0 }, %struct.attrib_rt { i16 1, i16 0 }, %struct.attrib_rt { i16 37, i16 0 }, %struct.attrib_rt { i16 18, i16 0 }, %struct.attrib_rt { i16 48, i16 0 }, %struct.attrib_rt { i16 27, i16 0 }, %struct.attrib_rt { i16 51, i16 0 }, %struct.attrib_rt { i16 21, i16 0 }, %struct.attrib_rt { i16 32, i16 0 }, %struct.attrib_rt { i16 3, i16 0 }, %struct.attrib_rt { i16 33, i16 0 }, %struct.attrib_rt { i16 41, i16 0 }, %struct.attrib_rt { i16 30, i16 0 }, %struct.attrib_rt { i16 2, i16 0 }, %struct.attrib_rt { i16 50, i16 0 }, %struct.attrib_rt { i16 4, i16 0 }, %struct.attrib_rt { i16 17, i16 0 }, %struct.attrib_rt { i16 45, i16 0 }, %struct.attrib_rt { i16 49, i16 37 }, %struct.attrib_rt { i16 6, i16 0 }, %struct.attrib_rt { i16 36, i16 0 }, %struct.attrib_rt { i16 24, i16 0 }, %struct.attrib_rt { i16 14, i16 0 }, %struct.attrib_rt { i16 5, i16 0 }, %struct.attrib_rt { i16 26, i16 0 }, %struct.attrib_rt { i16 25, i16 44 }, %struct.attrib_rt { i16 43, i16 0 }, %struct.attrib_rt { i16 39, i16 0 }, %struct.attrib_rt { i16 12, i16 0 }, %struct.attrib_rt { i16 7, i16 0 }, %struct.attrib_rt { i16 11, i16 0 }, %struct.attrib_rt { i16 35, i16 0 }, %struct.attrib_rt { i16 31, i16 0 }, %struct.attrib_rt { i16 40, i16 0 }, %struct.attrib_rt { i16 13, i16 0 }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat0(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %23
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
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %35
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
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @countlib(i32 %46)
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %73

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 @owl_topological_eye(i32 %50, i32 %55)
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %73

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 @owl_topological_eye(i32 %59, i32 %64)
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %68, i32 1, i32 1, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %67, %58, %49, %4
  %74 = phi i1 [ false, %58 ], [ false, %49 ], [ false, %4 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @countlib(i32 %29)
  %31 = icmp eq i32 %30, 2
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat5(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %13
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
define internal i32 @autohelperowl_vital_apat7(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @accuratelib(i32 %22, i32 %23, i32 20, i32* null)
  %25 = icmp sgt i32 %24, 1
  br label %26

26:                                               ; preds = %21, %4
  %27 = phi i1 [ false, %4 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat8(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @accuratelib(i32 %22, i32 %23, i32 20, i32* null)
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @owl_big_eyespace(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @owl_eye_size(i32 %31)
  %33 = icmp sle i32 %32, 8
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 1, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i1 [ true, %30 ], [ %40, %34 ]
  br label %43

43:                                               ; preds = %41, %26, %21, %4
  %44 = phi i1 [ false, %26 ], [ false, %21 ], [ false, %4 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat9(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @accuratelib(i32 %22, i32 %23, i32 20, i32* null)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @owl_big_eyespace(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %31, i32 1, i32 1, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 5
  br label %36

36:                                               ; preds = %30, %26, %21, %4
  %37 = phi i1 [ false, %26 ], [ false, %21 ], [ false, %4 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat10(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %27, label %32, label %49

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @attack(i32 %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28, %20
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
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %28, %20
  %50 = phi i1 [ false, %28 ], [ false, %20 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat12(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %14
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
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
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
define internal i32 @autohelperowl_vital_apat13(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @countlib(i32 %39)
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %67

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @countlib(i32 %43)
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @owl_eyespace(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* @stackp, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %56, i32 0, i32 16
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %57, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  br label %63

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @attack(i32 %61, i32* null)
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi i32 [ %59, %53 ], [ %62, %60 ]
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %63, %46, %42, %4
  %68 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %4 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat14(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @countlib(i32 %39)
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %55

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @countlib(i32 %43)
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %47, i32 1, i32 3, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %46, %42, %4
  %56 = phi i1 [ false, %42 ], [ false, %4 ], [ %54, %46 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat15(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
define internal i32 @autohelperowl_vital_apat16(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat17(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat18(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @owl_big_eyespace(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat19(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
define internal i32 @autohelperowl_vital_apat20(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_big_eyespace(i32 %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat21(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = call i32 @owl_big_eyespace(i32 %25)
  %27 = icmp ne i32 %26, 0
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
define internal i32 @autohelperowl_vital_apat22(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @owl_big_eyespace(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %36, i32 1, i32 4, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %35, %4
  %45 = phi i1 [ false, %4 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat23(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @owl_eyespace(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @accuratelib(i32 %26, i32 %27, i32 20, i32* null)
  %29 = icmp sgt i32 %28, 0
  br label %30

30:                                               ; preds = %25, %21, %4
  %31 = phi i1 [ false, %21 ], [ false, %4 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat27(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @somewhere(i32 %26, i32 0, i32 2, i32 %27, i32 %28)
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat28(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @somewhere(i32 %26, i32 0, i32 2, i32 %27, i32 %28)
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat30(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %21
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
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %47

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @owl_eyespace(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 3, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 5
  br label %47

47:                                               ; preds = %39, %35, %4
  %48 = phi i1 [ false, %35 ], [ false, %4 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat34(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %18, i32 0, i32 1, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat35(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = sub nsw i32 3, %19
  %21 = call i32 @accuratelib(i32 %18, i32 %20, i32 20, i32* null)
  %22 = icmp eq i32 %21, 2
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat37(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %13
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
define internal i32 @autohelperowl_vital_apat38(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_big_eyespace(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %22, i32 0, i32 1, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %4
  %29 = phi i1 [ false, %4 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat39(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @owl_eyespace(i32 %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat40(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat41(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
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
define internal i32 @autohelperowl_vital_apat42(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 650), i64 0, i64 %27
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
  br i1 %41, label %58, label %46

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @attack(i32 %43, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %47, i32 1, i32 1, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 1, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %52, %46, %42, %34
  %59 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %34 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat43(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 3, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 3, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %32, %4
  %42 = phi i1 [ false, %4 ], [ %40, %32 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat44(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @owl_proper_eye(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @owl_proper_eye(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @owl_proper_eye(i32 %38)
  %40 = add nsw i32 %37, %39
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @owl_proper_eye(i32 %41)
  %43 = add nsw i32 %40, %42
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %64

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = call i32 @safe_move(i32 %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @owl_eye_size(i32 %52)
  %54 = icmp sle i32 %53, 8
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %56, i32 1, i32 1, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %55, %51
  %63 = phi i1 [ true, %51 ], [ %61, %55 ]
  br label %64

64:                                               ; preds = %62, %45, %35, %4
  %65 = phi i1 [ false, %45 ], [ false, %35 ], [ false, %4 ], [ %63, %62 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat45(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = call i32 @is_ko_point(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat46(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 572), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = call i32 @accuratelib(i32 %32, i32 %34, i32 20, i32* null)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %60

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @accuratelib(i32 %38, i32 %39, i32 20, i32* null)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = call i32 @owl_topological_eye(i32 %43, i32 %48)
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @owl_topological_eye(i32 %52, i32 %57)
  %59 = icmp sgt i32 %58, 0
  br label %60

60:                                               ; preds = %51, %42, %37, %4
  %61 = phi i1 [ false, %42 ], [ false, %37 ], [ false, %4 ], [ %59, %51 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperowl_vital_apat47(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
define internal i32 @autohelperowl_vital_apat49(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp sle i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @owl_eyespace(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @owl_topological_eye(i32, i32) #1

declare dso_local i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @owl_big_eyespace(i32) #1

declare dso_local i32 @owl_eye_size(i32) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @owl_eyespace(i32) #1

declare dso_local i32 @somewhere(i32, i32, i32, ...) #1

declare dso_local i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare dso_local i32 @owl_proper_eye(i32) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @is_ko_point(i32) #1

declare dso_local i32 @vital_chain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
