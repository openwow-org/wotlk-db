-- Bash'ir Landing

-- Bash'ir Crystalforge
-- position corrected
UPDATE gameobject SET position_x = 4020.635, position_y = 5895.309, position_z = 267.3166, orientation = 3.804818, rotation2 = -0.9455185, rotation3 = 0.3255684 WHERE guid = 13355;

-- Aether Ray
-- wrong spawns removed
DELETE FROM creature WHERE guid IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790);
DELETE FROM creature_addon WHERE guid IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790);
DELETE FROM creature_movement WHERE id IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790);
DELETE FROM game_event_creature WHERE guid IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790);
DELETE FROM game_event_creature_data WHERE guid IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790);
DELETE FROM creature_battleground WHERE guid IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790);
DELETE FROM creature_linking WHERE guid IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790) 
OR master_guid IN (78259,78258,78256,78261,78260,78257,78250,78249,78255,78254,78252,78253,78251,78248,78247,77787,77791,77789,77788,77790);

-- Amberpelt Clefthoof
-- Removed in patch: 2.1
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 22287);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 22287);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 22287);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 22287);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 22287);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 22287)
OR master_guid IN (SELECT guid FROM creature WHERE id = 22287);
DELETE FROM creature WHERE id = 22287;

-- Image of Commander Ameer
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 1797 , FactionHorde = 1797, Expansion = 1, GossipMenuId = 8614, MinLevelHealth = 6986, MaxLevelHealth = 6986, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 252, MaxMeleeDmg = 357, UnitFlags = 0, NpcFlags = 3, MovementType = 0 WHERE Entry = 22919;
-- gossip
DELETE FROM gossip_menu WHERE entry = 8614;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8614, 10791, 0, 0);
-- missing added - WoTLKDB free guids reused
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(78259,22919,530,1,1,0,0,3866.34,5978.46,291.792,3.19426,300,300,0,0,6986,0,0,0);

-- Bash'ir Spell-Thief
UPDATE creature_template_addon SET auras = NULL WHERE entry = 22242;
-- missing added - WoTLKDB free guids reused
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(78258,22242,530,1,1,0,0,3951.97,5963.87,266.679,4.852015,300,300,0,0,5589,3155,0,0),
(78256,22242,530,1,1,0,0,3953.83,6023.34,266.039,1.39232,300,300,0,0,5589,3155,0,2),
(78261,22242,530,1,1,0,0,3920.99,5973.4,267.398,4.852015,300,300,0,0,5589,3155,0,0),
(78260,22242,530,1,1,0,0,4014.49,5876.32,267.872,3.804818,300,300,0,0,5744,3231,0,0),
(78257,22242,530,1,1,0,0,3970.4,5910.05,267.363,4.93839,300,300,0,0,5744,3231,0,0);
-- Updates
UPDATE creature SET position_x = 3741.298096, position_y = 5894.577148, position_z = 264.743256, orientation = 1.186824 WHERE guid = 77957;
UPDATE creature SET position_x = 3803.000000, position_y = 5915.062988, position_z = 266.690033, orientation = 5.742133 WHERE guid = 77960;
UPDATE creature SET position_x = 3820.812988, position_y = 5933.126953, position_z = 266.754181, orientation = 5.637414 WHERE guid = 77964;
UPDATE creature SET position_x = 3845.914795, position_y = 6069.860352, position_z = 265.025269, orientation = 6.255969 WHERE guid = 77967;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (78256,77959,77967);
DELETE FROM creature_movement WHERE id IN (78256,77959,77967);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #78256
(78256,1,3956.92,6039.39,266.017,0,0,1.54547),
(78256,2,3956.45,6050.03,266.14,0,0,1.6515),
(78256,3,3956.97,6040.16,266.019,0,0,4.72633),
(78256,4,3954.29,6023.22,266.038,0,0,4.59281),
(78256,5,3948.05,6003.01,266.029,0,0,4.27473),
(78256,6,3942.38,5992.27,265.969,0,0,4.34148),
(78256,7,3940.02,5977.37,266.38,0,0,4.29829),
(78256,8,3927.62,5952.93,267.419,0,0,4.25509),
(78256,9,3916.65,5924.59,266.66,2000,0,4.32185),
(78256,10,3927.35,5952.74,267.438,0,0,1.19204),
(78256,11,3939.98,5977.14,266.399,0,0,1.0546),
(78256,12,3942.43,5991.95,265.977,0,0,1.30592),
(78256,13,3948.1,6002.83,266.034,0,0,1.08994),
(78256,14,3954.19,6022.86,266.038,0,0,1.3609),
-- #77959
(77959,1,3748.81,5919.71,264.993,0,0,6.13061),
(77959,2,3756.2,5920.01,264.811,0,0,0.789118),
(77959,3,3764.71,5931.86,265.501,0,0,0.998034),
(77959,4,3771.11,5942.95,265.847,0,0,0.86059),
(77959,5,3778.08,5949.18,265.47,0,0,6.11883),
(77959,6,3790.08,5941.96,265.368,0,0,5.64759),
(77959,7,3803,5933.62,265.844,0,0,5.56513),
(77959,8,3820.44,5916.78,266.609,0,0,5.5023),
(77959,9,3838.14,5898.63,266.633,2000,0,5.49837),
(77959,10,3820.78,5916.37,266.653,0,0,2.35678),
(77959,11,3803.54,5933.1,265.876,0,0,2.41961),
(77959,12,3790.24,5942.07,265.372,0,0,2.58454),
(77959,13,3778.55,5949.11,265.49,0,0,3.38015),
(77959,14,3770.98,5942.92,265.854,0,0,4.00447),
(77959,15,3764.81,5931.95,265.505,0,0,4.16914),
(77959,16,3756.23,5920.42,264.813,0,0,3.639),
(77959,17,3749.28,5919.66,264.966,0,0,2.87324),
(77959,18,3736.93,5927.57,266.391,0,0,2.48447),
-- #77967
(77967,1,3860.25,6067.38,264.784,0,0,5.99993),
(77967,2,3873.95,6063.18,264.871,0,0,5.98815),
(77967,3,3892.78,6056.72,264.829,0,0,5.96459),
(77967,4,3908.92,6051.41,264.831,2000,0,5.9371),
(77967,5,3893.53,6056.51,264.83,0,0,2.83881),
(77967,6,3869.24,6064.68,264.88,0,0,2.76812),
(77967,7,3860.68,6067.18,264.783,0,0,2.96055),
(77967,8,3846.2,6069.8,265.016,0,0,3.13297),
(77967,9,3831.3,6066.59,264.987,0,0,3.86261),
(77967,10,3845.58,6069.91,265.035,0,0,6.24478);

-- Bash'ir Arcanist
-- missing added - WoTLKDB free guids reused
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(78250,22243,530,1,1,0,0,3695.35,6004.69,265.265,5.92225,300,300,0,0,5744,3231,0,0),
(78249,22243,530,1,1,0,0,3912.05,6093.59,270.567,5.58119,300,300,0,0,5903,3309,0,0),
(78255,22243,530,1,1,0,0,3926.36,6023.15,269.678,1.710423,300,300,0,0,5744,3231,0,0),
(78254,22243,530,1,1,0,0,3990.36,6071.78,266.941,3.717551,300,300,0,0,5903,3309,0,0),
(78252,22243,530,1,1,0,0,4006.68,5924.28,267.573,4.537856,300,300,0,0,5744,3231,0,0),
(78253,22243,530,1,1,0,0,4040.06,5875.89,267.873,3.473205,300,300,0,0,5903,3309,0,0);
-- Updates
UPDATE creature SET position_x = 3849.554932, position_y = 6043.574219, position_z = 266.573608, orientation = 2.897247 WHERE guid = 77982;
UPDATE creature SET position_x = 3869.548096, position_y = 6073.366211, position_z = 265.261963, orientation = 3.054326 WHERE guid = 77981;
UPDATE creature SET position_x = 3710.393311, position_y = 6077.571777, position_z = 267.135132, orientation = 2.172714 WHERE guid = 77975;
UPDATE creature SET position_x = 3680.994629, position_y = 5988.262695, position_z = 265.954071, orientation = 0.263038 WHERE guid = 77972;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (77984,77971);
DELETE FROM creature_movement WHERE id IN (77984,77971);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #77984
(77984,1,3810.6,6118.33,265.946,0,0,2.32459),
(77984,2,3815.21,6113.23,265.917,0,0,5.11511),
(77984,3,3816.01,6104.22,265.601,0,0,4.84807),
(77984,4,3820.15,6089.54,265.53,0,0,5.00123),
(77984,5,3828.95,6066.38,264.918,0,0,4.51742),
(77984,6,3827.3,6060.12,264.837,0,0,5.41827),
(77984,7,3835.42,6054.36,265.546,0,0,5.71384),
(77984,8,3838.62,6050.72,266.006,0,0,5.26617),
(77984,9,3839.7,6046.41,266.286,0,0,4.88517),
(77984,10,3838.64,6050.57,266.019,0,0,1.83782),
(77984,11,3835.88,6054.11,265.603,0,0,2.46771),
(77984,12,3827.61,6059.98,264.849,0,0,1.51726),
(77984,13,3829.04,6066.1,264.912,0,0,1.73364),
(77984,14,3820.05,6089.17,265.519,0,0,1.90643),
(77984,15,3816.16,6104.02,265.589,0,0,1.61348),
(77984,16,3815.46,6113.13,265.911,0,0,2.26457),
-- #77971
(77971,1,3726,5984.83,267.122,0,0,0.876704),
(77971,2,3730.06,5990.76,266.06,0,0,1.40666),
(77971,3,3728.49,5996.69,265.405,0,0,2.02713),
(77971,4,3723.53,6000.8,265.344,0,0,2.50229),
(77971,5,3713.59,6008.07,265.101,0,0,1.85669),
(77971,6,3715.81,6019.78,265.117,0,0,1.16458),
(77971,7,3719,6027.41,264.865,0,0,1.5078),
(77971,8,717.38,6034.17,264.841,0,0,1.6476),
(77971,9,3718.24,6044.15,265.202,0,0,1.53372),
(77971,10,3718.19,6052.8,265.319,0,0,1.738),
(77971,11,3715.3,6059.73,265.532,0,0,2.40166),
(77971,12,3709.54,6060.51,266.247,0,0,2.97893),
(77971,13,3703.95,6062.37,266.893,0,0,2.10871),
(77971,14,3704.13,6067.74,267.023,0,0,1.29425),
(77971,15,3706.99,6072.65,267.049,0,0,1.02329),
(77971,16,3707.85,6076.64,267.051,0,0,1.33352),
(77971,17,3704.27,6068.22,267.027,0,0,4.32588),
(77971,18,3703.64,6062.89,266.911,0,0,5.51104),
(77971,19,3709.19,6060.57,266.295,0,0,6.05297),
(77971,20,3714.77,6060.14,265.584,0,0,5.74116),
(77971,21,3718.3,6053.12,265.339,0,0,4.68541),
(77971,22,3718.45,6045.17,265.264,0,0,4.5943),
(77971,23,3717.42,6034.1,264.839,0,0,4.74745),
(77971,24,3718.5,6027.22,264.89,0,0,4.632),
(77971,25,3715.97,6019.96,265.099,0,0,4.3833),
(77971,26,3714.07,6008.06,265.115,0,0,5.34541),
(77971,27,3728.7,5996.9,265.414,0,0,5.31085),
(77971,28,3730.07,5991.4,265.984,0,0,4.4226),
(77971,29,3725.92,5985.04,267.115,0,0,3.87203);

-- Bash'ir Raider
-- missing added - WoTLKDB free guids reused
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(78251,22241,530,1,1,0,0,3957.18,6082.14,269.598,4.869469,300,300,0,0,7181,0,0,0),
(78248,22241,530,1,1,0,0,4000.29,5894.65,266.54,3.874631,300,300,0,0,7181,0,0,0),
(78247,22241,530,1,1,0,0,4023.13,5849.69,266.066,3.752458,300,300,0,0,6986,0,0,0);
-- Updates
UPDATE creature SET position_x = 3751.349121, position_y = 5959.805664, position_z = 266.646484, spawndist = 2, MovementType = 1 WHERE guid = 77948;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (77950,77953,77949);
DELETE FROM creature_movement WHERE id IN (77950,77953,77949);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #77950
(77950,1,3718.9,6024.35,265.105,0,0,5.80482),
(77950,2,3725.27,6024.34,266.15,0,0,0.271691),
(77950,3,3730.35,6026.38,266.594,0,0,0.409135),
(77950,4,3725.58,6024.14,266.192,0,0,3.23264),
(77950,5,3719.45,6023.98,265.139,0,0,2.42009),
(77950,6,3716.69,6030.3,264.806,0,0,1.7525),
(77950,7,3716.55,6036.99,264.915,0,0,1.58757),
(77950,8,3718.01,6051.78,265.288,0,0,1.54437),
(77950,9,3723.16,6064.98,265.615,0,0,1.12811),
(77950,10,3729.08,6079.99,266.016,0,0,1.52081),
(77950,11,3727.88,6086.39,265.938,0,0,1.81926),
(77950,12,3724.32,6098.39,265.988,0,0,1.90103),
(77950,13,3721.67,6105.23,266.257,0,0,2.16021),
(77950,14,3716.67,6110.73,266.477,0,0,2.58747),
(77950,15,3722.44,6103.81,266.206,0,0,5.19736),
(77950,16,3727.85,6086.71,265.924,0,0,4.92797),
(77950,17,3728.82,6080.05,266.038,0,0,4.6413),
(77950,18,3723.15,6065.14,265.625,0,0,4.0656),
(77950,19,3717.35,6058.01,265.4,0,0,4.58946),
(77950,20,3718.21,6050.87,265.278,0,0,4.7646),
(77950,21,3718.21,6045.2,265.266,0,0,4.67036),
(77950,22,3716.54,6031.06,264.816,0,0,4.70963),
-- #77953
(77953,1,3761.73,6125.47,266.883,0,0,5.24012),
(77953,2,3767.61,6121.35,266.794,0,0,5.40191),
(77953,3,3771.58,6116.18,266.354,0,0,4.97309),
(77953,4,3772.6,6109.56,266.223,0,0,4.9024),
(77953,5,3775.81,6100.82,266.286,0,0,5.18514),
(77953,6,3779.28,6094.64,266.222,0,0,5.24797),
(77953,7,3775.87,6100.47,266.294,0,0,2.02784),
(77953,8,3772.71,6109.15,266.22,0,0,1.74509),
(77953,9,3771.78,6115.97,266.331,0,0,2.05533),
(77953,10,3768.1,6121.06,266.764,0,0,2.36537),
(77953,11,3761.81,6125.15,266.906,0,0,2.49496),
(77953,12,3756.67,6140.58,266.12,0,0,1.29335),
(77953,13,3760.49,6147.73,266.61,0,0,0.774989),
(77953,14,3766.77,6153.68,266.309,0,0,0.9949),
(77953,15,3769.51,6165.54,265.952,0,0,1.48185),
(77953,16,3767.23,6154.3,266.252,0,0,4.08937),
(77953,17,3761.09,6148.29,266.623,0,0,3.92051),
(77953,18,3756.74,6140.92,266.128,0,0,4.83078),
(77953,19,3758.92,6132.7,266.556,0,0,4.99456),
-- #77949
(77949,1,3754.44,5966.63,266.256,0,0,5.62962),
(77949,2,3759.5,5962.43,266.458,0,0,6.06709),
(77949,3,3763.13,5961.72,266.419,0,0,0.0744121),
(77949,4,3768.68,5963.4,266.191,0,0,0.400352),
(77949,5,3778.07,5968.18,265.72,0,0,0.749855),
(77949,6,3785.8,5976.82,265.173,0,0,0.903007),
(77949,7,3793.05,5990.79,265.231,0,0,1.18968),
(77949,8,3798.65,6004.33,264.836,0,0,1.10328),
(77949,9,3808.9,6024.12,265.071,0,0,1.13077),
(77949,10,3813.66,6037.32,265.479,0,0,1.11114),
(77949,11,3809.12,6024.52,265.102,0,0,4.32735),
(77949,12,3798.89,6004.85,264.824,0,0,4.24095),
(77949,13,3793.35,5991.4,265.233,0,0,4.32734),
(77949,14,3785.98,5977.13,265.169,0,0,4.10351),
(77949,15,3778.72,5968.61,265.668,0,0,3.80899),
(77949,16,3768.96,5963.48,266.181,0,0,3.47912),
(77949,17,3763.31,5961.92,266.408,0,0,3.25999),
(77949,18,3760.51,5962.34,266.458,0,0,2.8076),
(77949,19,3754.93,5966.07,266.283,0,0,2.34815),
(77949,20,3750.67,5971.02,266.28,0,0,2.48952);

-- Unbound Ethereal
UPDATE creature_template SET MinLevelHealth = 6986, MaxLevelHealth = 7181, Armor = 7018, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 22244;
-- missing added - WoTLKDB free guids reused
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(77789,22244,530,1,1,0,0,3826.34,6061.31,264.852,4.42487,300,300,7,0,7181,0,0,1),
(77788,22244,530,1,1,0,0,3966.62,6084.14,269.127,4.61415,300,300,5,0,7181,0,0,1),
(77787,22244,530,1,1,0,0,3982.43,6003.25,267.936,2.13622,300,300,5,0,7181,0,0,1),
(77791,22244,530,1,1,0,0,4024.21,5916.89,267.871,3.39678,300,300,5,0,7181,0,0,1);
-- Updates
UPDATE creature SET position_x = 3756.953857, position_y = 5903.393066, position_z = 264.866150 WHERE guid = 77987;
UPDATE creature SET position_x = 3743.012207, position_y = 6075.371094, position_z = 267.447662 WHERE guid = 77992;
UPDATE creature SET position_x = 3684.718750, position_y = 6066.381348, position_z = 267.049255 WHERE guid = 77991;
UPDATE creature SET position_x = 3706.825928, position_y = 6151.557617, position_z = 266.107666 WHERE guid = 77995;
UPDATE creature SET position_x = 3695.731689, position_y = 6178.770508, position_z = 265.524658 WHERE guid = 77997;
