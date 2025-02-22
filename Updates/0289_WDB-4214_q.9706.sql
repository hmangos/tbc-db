-- q.9706 'Galaen's Journal - The Fate of Vindicator Saruan'
-- fix all summons to follow master instead of only one (was not poss back then)
UPDATE creature_template SET MovementType = 2 WHERE entry = 17875;
DELETE FROM `creature_movement_template` WHERE entry IN (17875);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path0
(17875,0,1,-1962.1,-11909.4,51.1,1.57135,1000,1787501),
(17875,0,2,-1963.41,-11892.6,49.3676,0.892762,22000,1787502),
(17875,0,3,-1958.35,-11897.4,49.4711,6.07246,0,0),
(17875,0,4,-1952.03,-11896.6,48.8108,0.258155,18000,1787503),
(17875,0,5,-1919.85,-11880.6,44.0878,6.17142,10,1787504),
(17875,0,6,-1863.07,-11876.3,31.4979,0.163122,0,0),
-- Path1
(17875,1,1,-1947.87,-11888.1,49.3264,4.21798,10000,1787505),
(17875,1,2,-1868.64,-11877.8,32.2439,0.149375,100,3),
-- Path2
(17875,2,1,-1946.23,-11890.1,48.8141,3.98629,10000,1787505),
(17875,2,2,-1868.64,-11877.8,32.2439,0.149375,100,3),
-- Path3
(17875,3,1,-1945.66,-11892.5,48.5311,3.6703,9000,1787505),
(17875,3,2,-1868.64,-11877.8,32.2439,0.149375,100,3),
-- Path4
(17875,4,1,-1945.51,-11896.5,48.3942,2.98229,10000,1787505),
(17875,4,2,-1868.64,-11877.8,32.2439,0.149375,0,0),
-- Path5
(17875,5,1,-1946.21,-11898.4,48.3578,2.7506,10000,1787505),
(17875,5,2,-1868.64,-11877.8,32.2439,0.149375,0,0),
-- Path6
(17875,6,1,-1947.67,-11900.2,48.3978,2.37596,10000,1787505),
(17875,6,2,-1868.64,-11877.8,32.2439,0.149375,0,0);
-- reconstructed
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1787503,1787505); -- identical with this SELECT * FROM `dbscripts_on_creature_movement` WHERE id BETWEEN 1787501 AND 1787505 order by id,delay,priority,datalong3;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('1787503','1000','0','0','0','0','0','0','0','0','14456','0','0','0','0','0','0','0',''),
('1787503','2000','0','25','1','0','0','0','0','0','0','0','0','0','0','0','0','0','RUN ON'),
('1787503','3000','0','10','17875','20000','1','0','0','0','1','0','0','0',-1933.54,-11854.5,51.7112,4.33369,'summon buddy 1'),
('1787503','3000','0','10','17875','20000','2','0','0','0','1','0','0','0',-1921.86,-11862.1,51.2699,3.61268,'summon buddy 2'),
('1787503','3000','0','10','17875','20000','3','0','0','0','1','0','0','0',-1901.63,-11863.8,41.7617,3.73783,'summon buddy 3'),
('1787503','3000','0','10','17875','20000','4','0','0','0','1','0','0','0',-1902.74,-11889.2,41.2617,3.10558,'summon buddy 4'),
('1787503','3000','0','10','17875','20000','5','0','0','0','1','0','0','0',-1918,-11907.4,46.0117,2.60135,'summon buddy 5'),
('1787503','3000','0','10','17875','20000','6','0','0','0','1','0','0','0',-1925.72,-11918.3,47.7805,2.44192,'summon buddy 6'),
('1787503','14000','0','0','0','0','0','0','0','0','14457','0','0','0','0','0','0','0',''),
('1787505','1000','0','28','8','0','0','0','0','4','0','0','0','0','0','0','0','0','STATE_KNEEL'),
('1787505','5000','0','28','0','0','0','0','0','4','0','0','0','0','0','0','0','0','STATE_STAND'),
('1787505','7000','0','1','15','0','0','0','0','4','4','15','4','15','0','0','0','0','emote');
