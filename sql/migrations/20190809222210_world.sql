DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190809222210');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190809222210');
-- Add your query below.


-- Add pvp flag to creatures based on CreatureDifficulty.db2.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`+524288 WHERE `entry` IN (54, 66, 68, 74, 78, 151, 152, 167, 190, 196, 197, 198, 222, 223, 225, 226, 227, 228, 233, 234, 235, 237, 238, 239, 240, 241, 244, 246, 248, 250, 251, 252, 253, 255, 258, 261, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 288, 289, 294, 295, 297, 302, 311, 313, 325, 328, 331, 332, 338, 340, 341, 342, 343, 344, 346, 347, 348, 349, 352, 372, 374, 375, 376, 377, 379, 381, 382, 383, 384, 415, 459, 460, 461, 464, 465, 466, 467, 468, 469, 482, 483, 487, 488, 489, 490, 491, 494, 495, 499, 514, 523, 543, 576, 633, 656, 658, 661, 663, 713, 714, 727, 733, 734, 738, 739, 754, 770, 777, 786, 789, 790, 791, 793, 812, 820, 821, 823, 826, 827, 828, 829, 836, 837, 840, 842, 843, 844, 853, 857, 859, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 874, 876, 878, 885, 886, 887, 888, 893, 894, 895, 896, 900, 903, 906, 907, 911, 912, 913, 914, 915, 916, 917, 918, 925, 926, 927, 928, 931, 932, 933, 934, 935, 936, 944, 945, 951, 952, 954, 955, 956, 957, 958, 959, 960, 963, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 999, 1000, 1001, 1064, 1068, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1089, 1090, 1091, 1092, 1093, 1098, 1099, 1100, 1101, 1103, 1104, 1105, 1139, 1141, 1146, 1147, 1148, 1149, 1153, 1154, 1155, 1156, 1182, 1187, 1198, 1203, 1204, 1212, 1213, 1214, 1215, 1217, 1218, 1226, 1228, 1229, 1231, 1232, 1234, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1249, 1250, 1252, 1254, 1255, 1256, 1257, 1261, 1265, 1266, 1267, 1268, 1269, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1289, 1291, 1292, 1294, 1295, 1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1354, 1355, 1356, 1358, 1360, 1362, 1365, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1381, 1382, 1383, 1385, 1386, 1387, 1395, 1402, 1404, 1405, 1407, 1413, 1414, 1415, 1416, 1421, 1422, 1423, 1427, 1428, 1430, 1431, 1432, 1434, 1435, 1436, 1437, 1439, 1440, 1441, 1442, 1443, 1444, 1448, 1450, 1451, 1452, 1453, 1454, 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465, 1466, 1469, 1470, 1471, 1472, 1473, 1474, 1475, 1476, 1477, 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1495, 1496, 1497, 1498, 1499, 1500, 1515, 1518, 1519, 1521, 1560, 1568, 1569, 1570, 1571, 1572, 1573, 1632, 1642, 1645, 1646, 1650, 1651, 1652, 1661, 1668, 1670, 1671, 1676, 1678, 1679, 1680, 1681, 1682, 1683, 1684, 1685, 1686, 1687, 1690, 1691, 1692, 1694, 1695, 1697, 1698, 1699, 1700, 1701, 1702, 1703, 1719, 1721, 1733, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744, 1745, 1746, 1748, 1749, 1750, 1751, 1752, 1754, 1756, 1775, 1777, 1854, 1872, 1901, 1937, 1938, 1949, 1950, 1951, 1952, 1959, 1960, 1963, 1975, 1976, 1977, 1978, 1992, 2041, 2046, 2050, 2055, 2057, 2058, 2077, 2078, 2079, 2080, 2081, 2082, 2083, 2084, 2086, 2092, 2093, 2094, 2096, 2097, 2099, 2104, 2105, 2107, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2121, 2122, 2123, 2124, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2134, 2135, 2136, 2137, 2140, 2142, 2151, 2153, 2198, 2209, 2210, 2214, 2215, 2216, 2225, 2226, 2227, 2228, 2229, 2238, 2239, 2263, 2276, 2277, 2278, 2285, 2299, 2302, 2303, 2307, 2308, 2309, 2310, 2311, 2314, 2315, 2316, 2326, 2327, 2329, 2330, 2352, 2357, 2361, 2362, 2363, 2364, 2365, 2366, 2367, 2378, 2379, 2380, 2381, 2382, 2383, 2386, 2388, 2389, 2390, 2391, 2392, 2393, 2394, 2395, 2396, 2397, 2398, 2399, 2400, 2401, 2402, 2405, 2409, 2410, 2418, 2419, 2425, 2429, 2430, 2432, 2436, 2437, 2438, 2439, 2455, 2456, 2457, 2458, 2459, 2460, 2461, 2464, 2465, 2466, 2468, 2469, 2470, 2485, 2489, 2492, 2497, 2504, 2506, 2507, 2508, 2509, 2510, 2511, 2512, 2513, 2514, 2515, 2516, 2517, 2518, 2519, 2524, 2525, 2526, 2527, 2528, 2608, 2621, 2668, 2669, 2679, 2682, 2695, 2696, 2697, 2698, 2700, 2703, 2704, 2705, 2706, 2708, 2711, 2712, 2713, 2737, 2770, 2771, 2772, 2784, 2786, 2787, 2788, 2789, 2790, 2792, 2795, 2796, 2798, 2799, 2802, 2803, 2804, 2805, 2806, 2808, 2810, 2812, 2814, 2816, 2818, 2819, 2820, 2821, 2835, 2851, 2855, 2856, 2857, 2858, 2859, 2860, 2861, 2870, 2876, 2878, 2879, 2880, 2881, 2908, 2909, 2910, 2911, 2912, 2913, 2916, 2917, 2918, 2930, 2934, 2941, 2947, 2948, 2980, 2981, 2982, 2984, 2985, 2986, 2987, 2988, 2991, 2993, 2995, 2996, 2997, 2998, 2999, 3001, 3002, 3003, 3004, 3005, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3033, 3034, 3036, 3037, 3038, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050, 3052, 3053, 3054, 3055, 3057, 3059, 3060, 3061, 3062, 3063, 3064, 3065, 3066, 3067, 3069, 3072, 3074, 3075, 3076, 3077, 3078, 3079, 3080, 3081, 3083, 3084, 3085, 3086, 3087, 3088, 3089, 3090, 3091, 3092, 3093, 3095, 3097, 3133, 3135, 3136, 3137, 3138, 3139, 3140, 3142, 3143, 3144, 3145, 3147, 3149, 3150, 3153, 3154, 3155, 3156, 3157, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167, 3168, 3169, 3170, 3171, 3172, 3173, 3174, 3175, 3177, 3178, 3179, 3181, 3182, 3184, 3185, 3186, 3187, 3188, 3189, 3190, 3191, 3193, 3194, 3208, 3210, 3211, 3212, 3213, 3214, 3215, 3216, 3217, 3218, 3219, 3220, 3221, 3222, 3223, 3224, 3230, 3233, 3287, 3290, 3291, 3292, 3294, 3296, 3297, 3298, 3304, 3305, 3306, 3309, 3310, 3312, 3313, 3314, 3315, 3316, 3317, 3318, 3319, 3320, 3321, 3322, 3323, 3324, 3325, 3326, 3327, 3328, 3329, 3330, 3331, 3332, 3333, 3334, 3335, 3336, 3337, 3338, 3341, 3342, 3343, 3344, 3345, 3346, 3347, 3348, 3349, 3350, 3351, 3352, 3353, 3354, 3355, 3356, 3357, 3358, 3359, 3360, 3361, 3362, 3363, 3364, 3365, 3366, 3367, 3368, 3369, 3370, 3371, 3372, 3373, 3387, 3388, 3389, 3390, 3399, 3400, 3401, 3402, 3403, 3404, 3405, 3406, 3407, 3408, 3409, 3410, 3411, 3418, 3419, 3421, 3428, 3429, 3430, 3431, 3432, 3433, 3441, 3443, 3447, 3448, 3449, 3454, 3455, 3464, 3468, 3469, 3477, 3478, 3479, 3480, 3481, 3482, 3483, 3484, 3485, 3486, 3487, 3488, 3489, 3490, 3500, 3501, 3514, 3515, 3516, 3517, 3518, 3519, 3520, 3521, 3522, 3523, 3539, 3540, 3541, 3542, 3543, 3544, 3545, 3546, 3547, 3548, 3549, 3550, 3551, 3552, 3553, 3554, 3555, 3556, 3557, 3561, 3562, 3567, 3568, 3571, 3583, 3584, 3585, 3587, 3588, 3589, 3590, 3591, 3592, 3593, 3594, 3595, 3596, 3597, 3598, 3599, 3600, 3601, 3602, 3603, 3604, 3605, 3606, 3607, 3608, 3609, 3610, 3611, 3612, 3613, 3614, 3615, 3616, 3620, 3621, 3622, 3624, 3625, 3626, 3627, 3628, 3629, 3639, 3644, 3649, 3650, 3657, 3661, 3663, 3666, 3681, 3682, 3685, 3688, 3689, 3690, 3691, 3692, 3693, 3694, 3695, 3700, 3701, 3702, 3703, 3704, 3705, 3706, 3707, 3708, 3779, 3836, 3838, 3841, 3842, 3845, 3846, 3847, 3848, 3849, 3880, 3881, 3882, 3883, 3884, 3885, 3890, 3894, 3901, 3916, 3920, 3933, 3934, 3935, 3936, 3937, 3948, 3951, 3952, 3953, 3954, 3955, 3956, 3958, 3959, 3960, 3961, 3962, 3963, 3964, 3965, 3967, 3969, 3970, 3978, 3979, 3980, 3982, 3994, 3995, 3996, 4043, 4046, 4047, 4048, 4049, 4077, 4078, 4079, 4080, 4081, 4082, 4083, 4084, 4087, 4088, 4089, 4090, 4091, 4092, 4138, 4146, 4155, 4156, 4159, 4160, 4161, 4163, 4164, 4165, 4167, 4168, 4169, 4170, 4171, 4172, 4173, 4175, 4177, 4180, 4181, 4182, 4183, 4185, 4186, 4187, 4188, 4189, 4190, 4191, 4192, 4193, 4194, 4195, 4197, 4198, 4200, 4203, 4204, 4205, 4208, 4209, 4210, 4211, 4212, 4213, 4214, 4215, 4216, 4217, 4218, 4219, 4220, 4221, 4222, 4223, 4225, 4226, 4228, 4229, 4230, 4231, 4232, 4233, 4234, 4235, 4236, 4240, 4241, 4242, 4243, 4244, 4254, 4255, 4256, 4257, 4258, 4259, 4262, 4265, 4266, 4267, 4305, 4307, 4309, 4310, 4311, 4312, 4314, 4317, 4319, 4320, 4321, 4407, 4423, 4444, 4451, 4455, 4456, 4483, 4484, 4485, 4486, 4488, 4489, 4498, 4501, 4502, 4509, 4510, 4521, 4544, 4545, 4546, 4547, 4549, 4550, 4551, 4552, 4553, 4554, 4555, 4556, 4557, 4558, 4559, 4560, 4561, 4562, 4563, 4564, 4565, 4566, 4567, 4568, 4569, 4570, 4571, 4572, 4573, 4574, 4575, 4576, 4577, 4578, 4580, 4581, 4582, 4583, 4584, 4585, 4586, 4587, 4588, 4589, 4590, 4591, 4592, 4593, 4594, 4595, 4596, 4597, 4598, 4599, 4600, 4601, 4602, 4603, 4604, 4605, 4606, 4607, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4721, 4722, 4730, 4731, 4732, 4752, 4753, 4772, 4773, 4775, 4782, 4791, 4794, 4875, 4876, 4877, 4878, 4879, 4883, 4884, 4885, 4886, 4888, 4889, 4890, 4891, 4892, 4893, 4894, 4895, 4896, 4897, 4898, 4899, 4900, 4902, 4921, 4922, 4923, 4924, 4926, 4941, 4943, 4944, 4947, 4948, 4949, 4951, 4954, 4959, 4960, 4961, 4963, 4964, 4965, 4966, 4967, 4968, 4973, 4974, 4979, 4981, 4983, 4984, 4995, 4996, 5042, 5047, 5049, 5052, 5054, 5081, 5082, 5083, 5087, 5090, 5091, 5092, 5093, 5094, 5095, 5096, 5099, 5100, 5101, 5102, 5103, 5106, 5107, 5108, 5109, 5110, 5111, 5112, 5113, 5114, 5115, 5116, 5117, 5118, 5119, 5120, 5121, 5122, 5123, 5124, 5125, 5126, 5127, 5128, 5129, 5130, 5132, 5133, 5134, 5135, 5137, 5138, 5139, 5140, 5141, 5142, 5143, 5144, 5145, 5146, 5147, 5148, 5149, 5150, 5151, 5152, 5153, 5154, 5155, 5156, 5157, 5158, 5159, 5160, 5161, 5162, 5163, 5164, 5165, 5166, 5167, 5169, 5170, 5171, 5172, 5173, 5174, 5175, 5177, 5178, 5188, 5189, 5190, 5191, 5193, 5199, 5200, 5204, 5384, 5385, 5386, 5387, 5388, 5389, 5390, 5392, 5393, 5394, 5395, 5396, 5412, 5413, 5414, 5418, 5464, 5476, 5479, 5480, 5482, 5483, 5484, 5489, 5491, 5492, 5493, 5494, 5495, 5496, 5497, 5498, 5499, 5500, 5501, 5502, 5503, 5504, 5505, 5506, 5508, 5509, 5510, 5511, 5512, 5513, 5514, 5515, 5516, 5517, 5518, 5519, 5520, 5543, 5546, 5547, 5564, 5565, 5566, 5567, 5569, 5570, 5591, 5592, 5593, 5595, 5597, 5599, 5603, 5605, 5606, 5609, 5610, 5611, 5612, 5613, 5614, 5620, 5624, 5635, 5636, 5637, 5638, 5639, 5640, 5641, 5642, 5644, 5651, 5653, 5654, 5655, 5656, 5657, 5658, 5659, 5660, 5661, 5662, 5663, 5664, 5665, 5667, 5668, 5670, 5675, 5679, 5688, 5690, 5693, 5694, 5695, 5696, 5698, 5699, 5700, 5701, 5702, 5703, 5704, 5705, 5706, 5707, 5724, 5725, 5731, 5732, 5733, 5734, 5744, 5747, 5748, 5749, 5750, 5752, 5753, 5754, 5757, 5758, 5759, 5765, 5769, 5770, 5782, 5810, 5811, 5812, 5814, 5815, 5816, 5817, 5819, 5820, 5821, 5870, 5871, 5875, 5878, 5880, 5882, 5883, 5884, 5885, 5886, 5887, 5888, 5892, 5899, 5900, 5905, 5906, 5907, 5908, 5909, 5910, 5911, 5917, 5938, 5939, 5940, 5941, 5942, 5943, 5944, 5952, 5953, 5957, 5958, 5994, 6014, 6018, 6026, 6027, 6028, 6030, 6031, 6034, 6086, 6087, 6089, 6090, 6091, 6094, 6114, 6119, 6120, 6121, 6122, 6142, 6166, 6169, 6171, 6172, 6173, 6174, 6175, 6177, 6178, 6179, 6181, 6182, 6237, 6241, 6244, 6267, 6272, 6286, 6287, 6288, 6289, 6290, 6291, 6292, 6293, 6294, 6295, 6297, 6298, 6299, 6300, 6301, 6306, 6328, 6367, 6373, 6374, 6376, 6382, 6387, 6389, 6393, 6394, 6395, 6408, 6410, 6411, 6446, 6467, 6522, 6566, 6567, 6569, 6574, 6576, 6577, 6579, 6586, 6607, 6667, 6670, 6706, 6726, 6727, 6732, 6734, 6735, 6736, 6737, 6738, 6739, 6740, 6741, 6746, 6747, 6749, 6774, 6775, 6776, 6778, 6780, 6781, 6784, 6785, 6786, 6787, 6790, 6806, 6826, 6868, 6886, 6887, 6928, 6929, 6930, 6946, 6966, 6986, 6987, 7007, 7009, 7010, 7024, 7087, 7088, 7089, 7208, 7230, 7231, 7232, 7292, 7293, 7294, 7295, 7296, 7297, 7298, 7311, 7312, 7313, 7315, 7316, 7317, 7410, 7427, 7485, 7489, 7583, 7623, 7643, 7683, 7714, 7730, 7731, 7733, 7736, 7737, 7740, 7744, 7763, 7764, 7765, 7766, 7776, 7777, 7779, 7780, 7790, 7792, 7793, 7798, 7823, 7824, 7825, 7843, 7852, 7854, 7865, 7866, 7867, 7868, 7869, 7870, 7871, 7875, 7877, 7878, 7879, 7880, 7884, 7900, 7903, 7904, 7907, 7916, 7917, 7937, 7939, 7940, 7941, 7942, 7943, 7944, 7945, 7946, 7947, 7948, 7949, 7950, 7952, 7953, 7954, 7955, 7956, 7957, 7975, 7976, 7978, 7980, 7999, 8015, 8016, 8017, 8018, 8019, 8020, 8021, 8022, 8026, 8055, 8096, 8115, 8117, 8118, 8140, 8141, 8142, 8143, 8144, 8145, 8146, 8147, 8150, 8151, 8152, 8153, 8154, 8155, 8157, 8158, 8159, 8160, 8161, 8176, 8177, 8178, 8256, 8284, 8306, 8307, 8310, 8356, 8357, 8358, 8359, 8360, 8361, 8362, 8363, 8364, 8380, 8383, 8385, 8390, 8392, 8393, 8396, 8397, 8398, 8401, 8403, 8404, 8416, 8436, 8507, 8508, 8517, 8576, 8582, 8583, 8584, 8586, 8587, 8609, 8610, 8659, 8664, 8665, 8669, 8670, 8671, 8672, 8673, 8674, 8681, 8719, 8720, 8721, 8722, 8723, 8724, 8856, 8878, 8879, 8931, 8934, 8997, 9047, 9076, 9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084, 9085, 9086, 9087, 9099, 9177, 9238, 9296, 9297, 9356, 9457, 9458, 9465, 9501, 9521, 9525, 9526, 9527, 9539, 9540, 9548, 9549, 9550, 9551, 9552, 9553, 9555, 9560, 9561, 9562, 9564, 9565, 9566, 9584, 9598, 9599, 9616, 9620, 9636, 9660, 9796, 9856, 9857, 9858, 9859, 9976, 9977, 9978, 9979, 9980, 9981, 9982, 9983, 9984, 9985, 9986, 9987, 9988, 9989, 9990, 9996, 10037, 10038, 10045, 10046, 10047, 10048, 10049, 10050, 10051, 10052, 10053, 10054, 10055, 10056, 10057, 10058, 10059, 10061, 10062, 10079, 10085, 10086, 10088, 10089, 10090, 10118, 10136, 10176, 10181, 10182, 10204, 10216, 10219, 10266, 10276, 10277, 10278, 10293, 10301, 10303, 10306, 10307, 10360, 10361, 10364, 10367, 10369, 10370, 10377, 10378, 10379, 10380, 10427, 10428, 10455, 10456, 10460, 10537, 10539, 10540, 10578, 10582, 10583, 10599, 10600, 10604, 10606, 10610, 10611, 10612, 10616, 10618, 10619, 10636, 10638, 10645, 10646, 10665, 10666, 10676, 10682, 10684, 10696, 10719, 10721, 10781, 10782, 10803, 10804, 10805, 10837, 10838, 10878, 10879, 10880, 10881, 10897, 10919, 10930, 10978, 11022, 11023, 11025, 11026, 11028, 11029, 11031, 11037, 11040, 11041, 11042, 11044, 11046, 11047, 11048, 11049, 11050, 11051, 11052, 11053, 11055, 11056, 11057, 11065, 11066, 11067, 11068, 11069, 11070, 11071, 11072, 11074, 11079, 11081, 11083, 11084, 11096, 11097, 11098, 11103, 11104, 11105, 11106, 11116, 11117, 11118, 11137, 11138, 11139, 11145, 11146, 11176, 11177, 11178, 11180, 11181, 11191, 11192, 11193, 11196, 11198, 11218, 11219, 11259, 11276, 11317, 11328, 11397, 11401, 11406, 11407, 11608, 11609, 11615, 11616, 11624, 11696, 11699, 11700, 11701, 11702, 11703, 11708, 11709, 11712, 11715, 11716, 11717, 11718, 11720, 11748, 11749, 11750, 11751, 11752, 11795, 11797, 11799, 11800, 11801, 11802, 11806, 11807, 11808, 11814, 11815, 11816, 11817, 11818, 11819, 11820, 11821, 11822, 11823, 11824, 11825, 11826, 11827, 11828, 11829, 11833, 11835, 11856, 11857, 11860, 11861, 11862, 11863, 11864, 11865, 11866, 11867, 11868, 11869, 11870, 11877, 11878, 11885, 11899, 11900, 11901, 11916, 11946, 11947, 11948, 11949, 11979, 11994, 11997, 11998, 12019, 12021, 12022, 12023, 12024, 12025, 12026, 12027, 12028, 12029, 12030, 12031, 12032, 12033, 12042, 12043, 12045, 12047, 12048, 12050, 12051, 12052, 12053, 12096, 12097, 12121, 12122, 12127, 12136, 12137, 12160, 12196, 12197, 12198, 12336, 12338, 12340, 12384, 12423, 12425, 12427, 12428, 12429, 12430, 12480, 12481, 12576, 12577, 12578, 12580, 12596, 12616, 12617, 12636, 12656, 12657, 12658, 12696, 12716, 12717, 12718, 12719, 12720, 12721, 12722, 12723, 12724, 12736, 12737, 12740, 12756, 12757, 12777, 12778, 12779, 12780, 12781, 12782, 12783, 12784, 12785, 12786, 12787, 12788, 12789, 12790, 12791, 12792, 12793, 12794, 12795, 12796, 12797, 12798, 12799, 12805, 12807, 12816, 12818, 12836, 12837, 12858, 12861, 12862, 12863, 12864, 12867, 12877, 12903, 12920, 12923, 12924, 12925, 12936, 12937, 12938, 12939, 12960, 12961, 12962, 12996, 12997, 12998, 13000, 13018, 13076, 13078, 13079, 13080, 13084, 13086, 13087, 13088, 13089, 13096, 13097, 13098, 13099, 13116, 13117, 13137, 13138, 13139, 13140, 13143, 13144, 13145, 13146, 13147, 13152, 13153, 13154, 13155, 13161, 13176, 13177, 13178, 13179, 13180, 13181, 13216, 13217, 13218, 13219, 13221, 13236, 13256, 13257, 13283, 13284, 13296, 13297, 13298, 13299, 13300, 13316, 13318, 13319, 13320, 13324, 13325, 13326, 13327, 13328, 13329, 13330, 13331, 13332, 13333, 13334, 13335, 13336, 13337, 13356, 13357, 13358, 13359, 13397, 13417, 13418, 13419, 13420, 13421, 13422, 13424, 13425, 13426, 13427, 13428, 13429, 13430, 13431, 13432, 13433, 13434, 13435, 13436, 13437, 13438, 13439, 13440, 13441, 13442, 13443, 13446, 13447, 13448, 13449, 13476, 13516, 13517, 13518, 13519, 13520, 13521, 13522, 13523, 13524, 13525, 13526, 13527, 13528, 13529, 13530, 13531, 13534, 13535, 13536, 13537, 13538, 13539, 13540, 13541, 13542, 13543, 13544, 13545, 13546, 13547, 13548, 13549, 13550, 13551, 13552, 13553, 13554, 13555, 13556, 13557, 13576, 13577, 13597, 13598, 13616, 13617, 13618, 13656, 13676, 13698, 13699, 13776, 13777, 13797, 13798, 13816, 13817, 13839, 13840, 13841, 13842, 13843, 14041, 14121, 14182, 14185, 14186, 14187, 14188, 14282, 14283, 14284, 14285, 14301, 14304, 14363, 14365, 14367, 14373, 14374, 14375, 14376, 14377, 14378, 14379, 14380, 14392, 14394, 14402, 14403, 14404, 14423, 14438, 14439, 14440, 14441, 14442, 14484, 14485, 14493, 14494, 14497, 14498, 14581, 14622, 14715, 14717, 14718, 14720, 14721, 14730, 14731, 14733, 14734, 14736, 14737, 14738, 14739, 14740, 14741, 14753, 14754, 14757, 14762, 14763, 14764, 14765, 14766, 14767, 14768, 14769, 14770, 14771, 14772, 14773, 14774, 14775, 14776, 14777, 14781, 14848, 14859, 14893, 14901, 14909, 14942, 14943, 14944, 14945, 14946, 14947, 14948, 14961, 14962, 14963, 14964, 14981, 14982, 14983, 14984, 14990, 15006, 15007, 15008, 15011, 15012, 15021, 15022, 15102, 15103, 15105, 15106, 15124, 15125, 15126, 15127, 15128, 15130, 15131, 15136, 15137, 15138, 15139, 15177, 15178, 15193, 15195, 15197, 15199, 15270, 15315, 15350, 15351, 15383, 15419, 15431, 15432, 15434, 15437, 15440, 15441, 15442, 15443, 15444, 15445, 15446, 15448, 15450, 15451, 15452, 15453, 15455, 15456, 15457, 15458, 15459, 15460, 15469, 15471, 15473, 15477, 15508, 15512, 15515, 15522, 15525, 15528, 15529, 15532, 15533, 15534, 15535, 15539, 15612, 15613, 15615, 15616, 15617, 15633, 15634, 15659, 15660, 15663, 15675, 15676, 15677, 15678, 15679, 15681, 15682, 15683, 15684, 15686, 15694, 15696, 15700, 15701, 15702, 15703, 15704, 15707, 15708, 15709, 15719, 15723, 15731, 15732, 15733, 15734, 15735, 15736, 15737, 15738, 15739, 15745, 15746, 15760, 15761, 15762, 15763, 15764, 15765, 15766, 15767, 15768, 15780, 15781, 15782, 15783, 15784, 15785, 15786, 15787, 15788, 15789, 15790, 15791, 15792, 15793, 15794, 15795, 15852, 15853, 15854, 15855, 15856, 15857, 15858, 15859, 15860, 15861, 15862, 15863, 15866, 15868, 15869, 15870, 15903, 15905, 15906, 15907, 15908, 16001, 16002, 16003, 16004, 16005, 16007, 16008, 16009, 16012, 16013, 16014, 16016, 16031, 16032, 16033, 16091, 16094, 16096, 16105, 16106, 16107, 16108, 16109, 16110, 16112, 16113, 16114, 16115, 16116, 16123, 16131, 16132, 16133, 16134, 16135, 16227, 16241, 16256, 16283, 16285, 16371, 16376, 16381, 16396, 16432, 16458, 16781, 16786, 17068, 17070, 17079, 17080, 17209, 17598, 17635, 17647, 17765, 17766, 17804, 17995, 17996);

/*
 World of Warcraft Client Patch 1.3.0 (2005-03-22)
 - Arei the Treant is now PvP-enabled.  If Horde players attack him
   while Alliance players are escorting him, the Horde players will now
   be flagged for PvP. 
*/

DELETE FROM `creature_template` WHERE `entry`=9598;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (9598, 0, 11362, 0, 0, 0, 'Arei', NULL, 0, 56, 56, 3150, 3150, 0, 0, 3327, 79, 2, 1.23, 1.14286, 0, 20, 5, 0, 0, 1, 141, 170, 0, 254, 1, 1460, 1606, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 4, 0, 9598, 0, 0, 0, 112, 112, 112, 112, 112, 0, 0, 0, 0, 95980, 0, 1, 702, '', 0, 3, 0, 0, 3, 0, 0, 0, 16384, 0, 0, 'npc_arei');
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (9598, 1, 11362, 0, 0, 0, 'Arei', NULL, 0, 56, 56, 3150, 3150, 0, 0, 3327, 79, 2, 1.23, 1.14286, 0, 20, 5, 0, 0, 1, 141, 170, 0, 254, 1, 1460, 1606, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 4, 0, 9598, 0, 0, 0, 112, 112, 112, 112, 112, 0, 0, 0, 0, 95980, 0, 1, 702, '', 0, 3, 0, 0, 3, 0, 0, 0, 16384, 0, 524288, 'npc_arei');

/*
 World of Warcraft Client Patch 1.4.0 (2005-04-19)
 - Kinelory in Arathi Highlands is now PvP-enabling, so Horde players 
   who attack her will be flagged for PvP. 
*/

DELETE FROM `creature_template` WHERE `entry`=2713;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (2713, 0, 1716, 0, 0, 0, 'Kinelory', NULL, 0, 38, 38, 1200, 1200, 1189, 1189, 1651, 231, 2, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 55, 71, 0, 148, 1, 2000, 2000, 2, 512, 0, 0, 0, 0, 0, 0, 54.5072, 74.9474, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27130, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2713, 0, 0, 0, 0, 0, 'npc_kinelory');
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (2713, 2, 1716, 0, 0, 0, 'Kinelory', NULL, 0, 38, 38, 1200, 1200, 1189, 1189, 1651, 231, 2, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 55, 71, 0, 148, 1, 2000, 2000, 2, 4608, 0, 0, 0, 0, 0, 0, 54.5072, 74.9474, 100, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27130, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2713, 0, 0, 0, 0, 524288, 'npc_kinelory');

/*
 World of Warcraft Client Patch 1.7.0 (2005-09-13)
 - Torek in Ashenvale (the questgiver for Torek's Assault) is now PvP
   enabling.
*/

DELETE FROM `creature_template` WHERE `entry`=12858;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (12858, 0, 12809, 0, 0, 0, 'Torek', NULL, 0, 24, 24, 1299, 1299, 0, 0, 992, 83, 2, 1.05, 1, 0, 20, 5, 0, 0, 1, 35, 43, 0, 104, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 37.3824, 51.4008, 100, 7, 4096, 12858, 0, 0, 0, 0, 0, 0, 0, 0, 11977, 8078, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 12858, 0, 0, 0, 0, 0, 'npc_torek');
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (12858, 5, 12809, 0, 0, 0, 'Torek', NULL, 0, 24, 24, 1299, 1299, 0, 0, 992, 83, 2, 1.05, 1, 0, 20, 5, 0, 0, 1, 35, 43, 0, 104, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 37.3824, 51.4008, 100, 7, 4096, 12858, 0, 0, 0, 0, 0, 0, 0, 0, 11977, 8078, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 12858, 0, 0, 0, 0, 524288, 'npc_torek');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
