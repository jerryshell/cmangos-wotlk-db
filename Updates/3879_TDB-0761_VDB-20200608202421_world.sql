-- Add your query below.

-- refuge point
-- add guard patrol
UPDATE `creature` SET `position_x` = -1157.48, `position_y` = -2615.69, `position_z` = 55.6105, `movementtype` = 2, `spawndist` = 0 WHERE `guid` = 11217;
DELETE FROM `creature_movement` WHERE `id` = 11217;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(11217, 1, -1157.48, -2615.69, 55.6105, 100, 0, 0),
(11217, 2, -1159.52, -2602.59, 55.9453, 100, 0, 0),
(11217, 3, -1161.76, -2588.23, 58.1569, 100, 0, 0),
(11217, 4, -1167.99, -2578.13, 60.0473, 100, 0, 0),
(11217, 5, -1177.93, -2569.2, 61.092, 100, 0, 0),
(11217, 6, -1179.87, -2558.53, 60.5932, 100, 0, 0),
(11217, 7, -1170.37, -2536.84, 56.4893, 100, 0, 0),
(11217, 8, -1173.81, -2508.59, 51.2712, 100, 0, 0),
(11217, 9, -1173.96, -2490.19, 51.669, 100, 0, 0),
(11217, 10, -1183.06, -2475.48, 50.9254, 100, 0, 0),
(11217, 11, -1188.72, -2462.48, 52.1066, 100, 0, 0),
(11217, 12, -1207.56, -2453.03, 51.9699, 100, 0, 0),
(11217, 13, -1224.89, -2447.87, 52.106, 100, 0, 0),
(11217, 14, -1247.5, -2433.66, 52.6777, 100, 0, 0),
(11217, 15, -1252.52, -2429.79, 52.7006, 100, 0, 0),
(11217, 16, -1271.89, -2425.6, 56.283, 100, 0, 0),
(11217, 17, -1287.54, -2421.59, 62.205, 100, 0, 0),
(11217, 18, -1300.12, -2417.44, 65.2704, 100, 0, 0),
(11217, 19, -1326.24, -2417.32, 60.9268, 100, 0, 0),
(11217, 20, -1340.51, -2425.65, 59.0797, 100, 0, 0),
(11217, 21, -1326.24, -2417.32, 60.9268, 100, 0, 0),
(11217, 22, -1300.12, -2417.44, 65.2704, 100, 0, 0),
(11217, 23, -1287.54, -2421.59, 62.205, 100, 0, 0),
(11217, 24, -1271.89, -2425.6, 56.283, 100, 0, 0),
(11217, 25, -1252.52, -2429.79, 52.7006, 100, 0, 0),
(11217, 26, -1247.5, -2433.66, 52.6777, 100, 0, 0),
(11217, 27, -1224.89, -2447.87, 52.106, 100, 0, 0),
(11217, 28, -1207.56, -2453.03, 51.9699, 100, 0, 0),
(11217, 29, -1188.72, -2462.48, 52.1066, 100, 0, 0),
(11217, 30, -1183.06, -2475.48, 50.9254, 100, 0, 0),
(11217, 31, -1173.96, -2490.19, 51.669, 100, 0, 0),
(11217, 32, -1173.81, -2508.59, 51.2712, 100, 0, 0),
(11217, 33, -1170.37, -2536.84, 56.4893, 100, 0, 0),
(11217, 34, -1179.87, -2558.53, 60.5932, 100, 0, 0),
(11217, 35, -1177.93, -2569.2, 61.092, 100, 0, 0),
(11217, 36, -1167.99, -2578.13, 60.0473, 100, 0, 0),
(11217, 37, -1161.76, -2588.23, 58.1569, 100, 0, 0),
(11217, 38, -1159.52, -2602.59, 55.9453, 100, 0, 0);

-- guard should roam not pathfind
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 4 WHERE `guid` = 11910 AND `id` = 10696;
DELETE FROM `creature_movement` WHERE `id` = 11910;

-- guard should roam not pathfind
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 3 WHERE `guid` = 11354 AND `id` = 10696;
DELETE FROM `creature_movement` WHERE `id` = 11354;

-- commander should roam not pathfind
UPDATE `creature` SET `movementtype` = 1, `spawndist` = 4 WHERE `guid` = 11825 AND `id` =  2608;
DELETE FROM `creature_movement` WHERE `id` = 11825;

-- correct guard
UPDATE `creature` SET `position_x` = -1325.06, `position_y` = -2516.36, `position_z` = 66.4607, `spawndist` = 3, `movementtype` = 1 WHERE `guid` = 11990 AND `id` = 10696;

-- correct guard
UPDATE `creature` SET `position_x` = -1232.87, `position_y` = -2537.59, `position_z` = 21.6518, `spawndist` = 4, `movementtype` = 1 WHERE `guid` = 11987 AND `id` = 10696;
DELETE FROM `creature_movement` WHERE `id` = 11987;

-- chatting guards

UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 11909 AND `id` = 10696;
DELETE FROM `creature_movement` WHERE `id` = 11909;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(11909, 1, -1224.24, -2542.39, 21.5331, 5.044, 6000, 1069601),
(11909, 2, -1224.24, -2542.39, 21.5331, 5.044, 9000, 1069601);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1069601;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1069601,0,0,31,10696,5,0,0,0,0,0,0,0,0,'Refuge Pointe Defender - Terminate Script if Refuge Pointe Defender not found in range',0,0,0,0),
(1069601,0,1,1,1,0,0,0,0,0,0,0,0,0,'Refuge Pointe Defender - EMOTE_ONESHOT_TALK',0,0,0,0),
(1069601,3000,0,1,1,0,0,0,0,0,0,10696,10,3,'Refuge Pointe Defender (Buddy) - EMOTE_ONESHOT_TALK',0,0,0,0);

-- add guard patrol
UPDATE `creature` SET `position_x` = -1157.48, `position_y` = -2615.69, `position_z` = 55.6105, `movementtype` = 2, `spawndist` = 0 WHERE `guid` = 11581;
DELETE FROM `creature_movement` WHERE `id` = 11581;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(11581, 1, -1287.23, -2607.49, 60.2273, 100, 0, 0),
(11581, 2, -1294.26, -2604.2, 62.885, 100, 0, 0),
(11581, 3, -1304.28, -2587.9, 65.586, 100, 0, 0),
(11581, 4, -1323.67, -2568.2, 70.2637, 100, 0, 0),
(11581, 5, -1325.9, -2549.65, 71.0423, 100, 0, 0),
(11581, 6, -1329.66, -2528.22, 69.255, 100, 0, 0),
(11581, 7, -1329.85, -2500.38, 62.6739, 100, 0, 0),
(11581, 8, -1323.84, -2490.29, 62.1491, 100, 0, 0),
(11581, 9, -1323.64, -2485.72, 61.843, 100, 0, 0),
(11581, 10, -1321.8, -2501.34, 62.5003, 100, 0, 0),
(11581, 11, -1317.82, -2509.67, 63.7074, 100, 0, 0),
(11581, 12, -1317.89, -2530.51, 69.0313, 100, 0, 0),
(11581, 13, -1316.08, -2540.51, 70.1673, 100, 0, 0),
(11581, 14, -1299.32, -2566.61, 66.5624, 100, 0, 0),
(11581, 15, -1285.15, -2584.3, 60.0045, 100, 0, 0),
(11581, 16, -1275.25, -2592.97, 57.0152, 100, 0, 0),
(11581, 17, -1265.63, -2598.77, 56.09, 100, 0, 0),
(11581, 18, -1250.49, -2607.32, 51.1928, 100, 0, 0),
(11581, 19, -1232.55, -2621.07, 49.6177, 100, 0, 0),
(11581, 20, -1217.74, -2648.3, 47.4176, 100, 0, 0),
(11581, 21, -1210.97, -2661.03, 45.6086, 100, 0, 0),
(11581, 22, -1225.31, -2644.6, 47.6387, 100, 0, 0),
(11581, 23, -1238.11, -2631.05, 49.283, 100, 0, 0),
(11581, 24, -1257.18, -2619.75, 51.3861, 100, 0, 0);

-- correct guard patrol
DELETE FROM `creature_movement` WHERE `id` = 11912;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(11912, 1, -1231.55, -2565.22, 25.1699, 100, 0, 0),
(11912, 2, -1227.67, -2574.49, 27.916, 100, 0, 0),
(11912, 3, -1218.79, -2587.38, 32.2331, 100, 0, 0),
(11912, 4, -1210.07, -2602.42, 36.6287, 100, 0, 0),
(11912, 5, -1205.32, -2611.72, 39.4931, 100, 0, 0),
(11912, 6, -1187.95, -2628.07, 44.5856, 100, 0, 0),
(11912, 7, -1188.9, -2637.32, 45.8108, 100, 0, 0),
(11912, 8, -1190.23, -2625.8, 43.8604, 100, 0, 0),
(11912, 9, -1201.41, -2616.47, 41.0586, 100, 0, 0),
(11912, 10, -1211.21, -2602.88, 36.6199, 100, 0, 0),
(11912, 11, -1219.73, -2586.26, 31.8362, 100, 0, 0),
(11912, 12, -1231.24, -2570.65, 26.5886, 100, 0, 0),
(11912, 13, -1235.98, -2558.96, 23.2081, 100, 0, 0),
(11912, 14, -1242.01, -2542.04, 21.0655, 100, 0, 0),
(11912, 15, -1249.89, -2526.74, 20.5675, 100, 0, 0),
(11912, 16, -1257.86, -2507.83, 20.7525, 100, 0, 0),
(11912, 17, -1263.99, -2498.3, 21.4449, 100, 0, 0),
(11912, 18, -1271, -2491.21, 23.4325, 100, 0, 0),
(11912, 19, -1277.73, -2483.71, 26.9696, 100, 0, 0),
(11912, 20, -1286.51, -2474.01, 32.1496, 100, 0, 0),
(11912, 21, -1298.83, -2464.31, 37.4132, 100, 0, 0),
(11912, 22, -1313.4, -2459.59, 41.8536, 100, 0, 0),
(11912, 23, -1326.28, -2452.06, 44.2271, 100, 0, 0),
(11912, 24, -1338.21, -2448.97, 46.7328, 100, 0, 0),
(11912, 25, -1350.12, -2448.01, 49.6837, 100, 0, 0),
(11912, 26, -1362.37, -2451.28, 51.755, 100, 0, 0),
(11912, 27, -1373.58, -2452.05, 53.6824, 100, 0, 0),
(11912, 28, -1362.04, -2451.31, 51.6703, 100, 0, 0),
(11912, 29, -1345.84, -2446.86, 48.7189, 100, 0, 0),
(11912, 30, -1331.67, -2450.23, 45.3627, 100, 0, 0),
(11912, 31, -1317.4, -2457.55, 42.5175, 100, 0, 0),
(11912, 32, -1307.09, -2461.93, 39.8764, 100, 0, 0),
(11912, 33, -1291.86, -2469.87, 34.4458, 100, 0, 0),
(11912, 34, -1278.55, -2483.99, 27.0582, 100, 0, 0),
(11912, 35, -1264.12, -2496.82, 21.6558, 100, 0, 0),
(11912, 36, -1257.64, -2506.99, 20.7814, 100, 0, 0),
(11912, 37, -1249.45, -2525.55, 20.5345, 100, 0, 0),
(11912, 38, -1241.7, -2541.16, 21.0258, 100, 0, 0),
(11912, 39, -1235.01, -2555.77, 22.5869, 100, 0, 0);

-- various npc's should roam
UPDATE `creature` SET `spawndist` = 2, `movementtype` = 1 WHERE `guid` IN (11813, 11806, 11804, 11207);

-- hammerfall
-- guard should be static
DELETE FROM `creature_movement` WHERE `id` = 11589;
UPDATE `creature` SET `spawndist` = 0, `movementtype` = 0 WHERE `guid` = 11589;

-- guard should roam
UPDATE `creature` SET `spawndist` = 2, `movementtype` = 1 WHERE `guid` = 11293;

-- add guard patrol
UPDATE `creature` SET `movementtype` = 2 WHERE `guid` = 11295;
DELETE FROM `creature_movement` WHERE `id` = 11295;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(11295, 1, -1011.16, -3573.5, 56.6254, 100, 0, 0),
(11295, 2, -1012.38, -3566.91, 56.6257, 100, 0, 0),
(11295, 3, -1012.4, -3561.54, 56.8081, 100, 0, 0),
(11295, 4, -1012.18, -3558.15, 56.8081, 100, 0, 0),
(11295, 5, -1011.97, -3554.81, 56.7605, 100, 0, 0),
(11295, 6, -1011.52, -3552.51, 56.8083, 100, 0, 0),
(11295, 7, -1009.65, -3543.18, 56.5424, 100, 0, 0),
(11295, 8, -1007.22, -3538.48, 56.7548, 100, 0, 0),
(11295, 9, -1002.65, -3533.69, 56.847, 100, 0, 0),
(11295, 10, -999.096, -3529.47, 57.0809, 100, 0, 0),
(11295, 11, -996.98, -3526.62, 57.161, 100, 0, 0),
(11295, 12, -993.71, -3522.12, 57.0473, 100, 0, 0),
(11295, 13, -988.143, -3514.48, 57.0914, 100, 0, 0),
(11295, 14, -984.271, -3510.48, 56.7384, 100, 0, 0),
(11295, 15, -974.247, -3503.38, 56.1901, 100, 0, 0),
(11295, 16, -969.106, -3502.58, 55.667, 100, 0, 0),
(11295, 17, -966.172, -3503.65, 55.8635, 100, 0, 0),
(11295, 18, -961.097, -3506.42, 56.3917, 100, 0, 0),
(11295, 19, -956.926, -3510.74, 56.9348, 100, 0, 0),
(11295, 20, -961.097, -3506.42, 56.3917, 100, 0, 0),
(11295, 21, -966.172, -3503.65, 55.8635, 100, 0, 0),
(11295, 22, -969.106, -3502.58, 55.667, 100, 0, 0),
(11295, 23, -974.247, -3503.38, 56.1901, 100, 0, 0),
(11295, 24, -984.271, -3510.48, 56.7384, 100, 0, 0),
(11295, 25, -988.143, -3514.48, 57.0914, 100, 0, 0),
(11295, 26, -993.71, -3522.12, 57.0473, 100, 0, 0),
(11295, 27, -996.98, -3526.62, 57.161, 100, 0, 0),
(11295, 28, -999.096, -3529.47, 57.0809, 100, 0, 0),
(11295, 29, -1002.65, -3533.69, 56.847, 100, 0, 0),
(11295, 30, -1007.22, -3538.48, 56.7548, 100, 0, 0),
(11295, 31, -1009.65, -3543.18, 56.5424, 100, 0, 0),
(11295, 32, -1011.52, -3552.51, 56.8083, 100, 0, 0),
(11295, 33, -1011.97, -3554.81, 56.7605, 100, 0, 0),
(11295, 34, -1012.18, -3558.15, 56.8081, 100, 0, 0),
(11295, 35, -1012.4, -3561.54, 56.8081, 100, 0, 0),
(11295, 36, -1012.38, -3566.91, 56.6257, 100, 0, 0);

-- add guard patrol
UPDATE `creature` SET `position_x` = -926.996, `position_y` = -3512.18, `position_z` = 70.3572, `movementtype` = 2 WHERE `guid` = 11254;
DELETE FROM `creature_movement` WHERE `id` = 11254;
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(11254, 1, -926.996, -3512.18, 70.3572, 100, 0, 0),
(11254, 2, -907.775, -3512.1, 70.7302, 100, 0, 0),
(11254, 3, -901.838, -3512.49, 70.8088, 100, 0, 0),
(11254, 4, -892.801, -3514.15, 71.0879, 100, 0, 0),
(11254, 5, -888.539, -3517.33, 71.2942, 100, 0, 0),
(11254, 6, -882.768, -3528.2, 70.8551, 100, 0, 0),
(11254, 7, -880.816, -3533.64, 70.8045, 100, 0, 0),
(11254, 8, -878.46, -3552.34, 71.2313, 100, 0, 0),
(11254, 9, -878.777, -3554.88, 71.1354, 100, 0, 0),
(11254, 10, -878.46, -3552.34, 71.2313, 100, 0, 0),
(11254, 11, -880.816, -3533.64, 70.8045, 100, 0, 0),
(11254, 12, -877.588, -3522.45, 71.9178, 100, 0, 0),
(11254, 13, -874.352, -3517.59, 72.1038, 100, 0, 0),
(11254, 14, -867.318, -3512.58, 72.4071, 100, 0, 0),
(11254, 15, -864.272, -3511.59, 72.4478, 100, 0, 0),
(11254, 16, -852.693, -3511.89, 72.9899, 100, 0, 0),
(11254, 17, -837.157, -3520.61, 72.6793, 100, 0, 0),
(11254, 18, -833.508, -3520.48, 72.4666, 100, 0, 0),
(11254, 19, -825.119, -3515.07, 73.216, 100, 0, 0),
(11254, 20, -833.508, -3520.48, 72.4666, 100, 0, 0),
(11254, 21, -836.444, -3522.35, 72.6455, 100, 0, 0),
(11254, 22, -840.417, -3528.54, 72.5051, 100, 0, 0),
(11254, 23, -841.12, -3532.57, 72.6043, 100, 0, 0),
(11254, 24, -841.349, -3537.44, 72.7414, 100, 0, 0),
(11254, 25, -840.461, -3541.44, 72.8348, 100, 0, 0),
(11254, 26, -837.431, -3544.22, 72.8486, 100, 0, 0),
(11254, 27, -825.475, -3545.91, 73.0131, 100, 0, 0),
(11254, 28, -837.431, -3544.22, 72.8486, 100, 0, 0),
(11254, 29, -840.461, -3541.44, 72.8348, 100, 0, 0),
(11254, 30, -841.349, -3537.44, 72.7414, 100, 0, 0),
(11254, 31, -841.12, -3532.57, 72.6043, 100, 0, 0),
(11254, 32, -840.417, -3528.54, 72.5051, 100, 0, 0),
(11254, 33, -836.444, -3522.35, 72.6455, 100, 0, 0),
(11254, 34, -833.508, -3520.48, 72.4666, 100, 0, 0),
(11254, 35, -825.119, -3515.07, 73.216, 100, 0, 0),
(11254, 36, -833.508, -3520.48, 72.4666, 100, 0, 0),
(11254, 37, -837.157, -3520.61, 72.6793, 100, 0, 0),
(11254, 38, -852.693, -3511.89, 72.9899, 100, 0, 0),
(11254, 39, -864.272, -3511.59, 72.4478, 100, 0, 0),
(11254, 40, -867.318, -3512.58, 72.4071, 100, 0, 0),
(11254, 41, -874.352, -3517.59, 72.1038, 100, 0, 0),
(11254, 42, -877.588, -3522.45, 71.9178, 100, 0, 0),
(11254, 43, -880.816, -3533.64, 70.8045, 100, 0, 0),
(11254, 44, -878.46, -3552.34, 71.2313, 100, 0, 0),
(11254, 45, -878.777, -3554.88, 71.1354, 100, 0, 0),
(11254, 46, -878.46, -3552.34, 71.2313, 100, 0, 0),
(11254, 47, -880.816, -3533.64, 70.8045, 100, 0, 0),
(11254, 48, -882.768, -3528.2, 70.8551, 100, 0, 0),
(11254, 49, -888.539, -3517.33, 71.2942, 100, 0, 0),
(11254, 50, -892.801, -3514.15, 71.0879, 100, 0, 0),
(11254, 51, -901.838, -3512.49, 70.8088, 100, 0, 0),
(11254, 52, -907.775, -3512.1, 70.7302, 100, 0, 0);

-- End of migration.
