-- Twilight Lord Everun 14479
-- missing waypoints added
UPDATE creature SET position_x = -6745.7437, position_y = 1592.2943, position_z = 6.9114037, spawndist = 0, movementType = 2 WHERE guid = 23615;
DELETE FROM creature_movement WHERE Id IN (23615);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(23615,1 ,-6745.7437,1592.2943,6.9114037,100,0,0),
(23615,2 ,-6724.8813,1573.1672,5.2336764,100,0,0),
(23615,3 ,-6711.506,1558.5605,7.250621,100,0,0),
(23615,4 ,-6699.1855,1555.5695,7.8893967,100,0,0),
(23615,5 ,-6686.1484,1563.0107,7.642852,100,0,0),
(23615,6 ,-6690.8955,1585.8013,6.407935,100,0,0),
(23615,7 ,-6687.703,1600.4492,6.7325954,100,0,0),
(23615,8 ,-6677.444,1617.37,8.834906,100,0,0),
(23615,9 ,-6677.697,1644.5408,8.241871,100,0,0),
(23615,10,-6690.7207,1663.1124,6.3770733,100,0,0),
(23615,11,-6710.4556,1670.0829,8.317429,100,0,0),
(23615,12,-6729.592,1670.0498,6.0010977,100,0,0),
(23615,13,-6747.005,1669.1266,6.980899,100,0,0),
(23615,14,-6754.4214,1668.3945,6.5931215,100,0,0),
(23615,15,-6764.1045,1664.135,7.446684,100,0,0),
(23615,16,-6781.893,1673.9442,6.011373,100,0,0),
(23615,17,-6796.5493,1681.3445,7.1039286,100,0,0),
(23615,18,-6804.8477,1668.566,6.3788543,100,0,0),
(23615,19,-6802.9077,1656.4673,6.3499413,100,0,0),
(23615,20,-6792.166,1645.6456,6.6694045,100,0,0),
(23615,21,-6779.1,1646.5426,6.6621294,100,0,0),
(23615,22,-6768.41,1639.1289,6.5885315,100,0,0),
(23615,23,-6763.401,1624.6064,6.1400914,100,0,0),
(23615,24,-6762.7173,1606.8296,6.206584,100,0,0),
(23615,25,-6763.003,1598.6188,6.907886,100,0,0),
(23615,26,-6754.623,1591.0848,6.7811575,100,0,0);
-- move them to spawn_group
DELETE FROM pool_creature_template WHERE id = 14479;
DELETE FROM pool_template WHERE entry = 25539;
DELETE FROM `spawn_group` WHERE id = 19921;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19921, 'Silithus - Twilight Lord Everun 14479', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19921;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19921, 23612, -1),
(19921, 23615, -1),
(19921, 43126, -1);