ALTER TABLE db_version CHANGE COLUMN required_z2828_01_mangos_spell_groups required_z2829_01_mangos_proc_cooldown bit;

UPDATE spell_proc_event SET cooldown=cooldown*1000 WHERE entry BETWEEN 0 AND 100000;

UPDATE spell_proc_event SET cooldown=3500 WHERE entry=324;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=11213;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=13983;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=16620;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16257;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=15600;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=18137;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=16864;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=20375;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=21185;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=22618;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=22620;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=23552;
UPDATE spell_proc_event SET cooldown=120000 WHERE entry=22648;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=23572;
UPDATE spell_proc_event SET cooldown=9 WHERE entry=29074;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29441;

-- Only first ranks of spell chains belong in spell_proc_event; higher ranks are rejected by
-- SpellMgr::IsValidCustomRank (no ppmRate) and only produce "is not first rank" errors.
-- Removed the following non-first-rank entries (first rank kept):
--   324:     905, 945, 325, 8134, 10432, 10431
--   11213:   12574, 12577, 12575, 12576
--   12281:   12812, 12815, 12813, 12814
--   13960:   13961, 13964, 13962, 13963
--   13983:   14071, 14070
--   16257:   16280, 16277, 16278, 16279
--   18137:   19308, 19312, 19309, 19311, 19310
--   20375:   20920, 20918, 20915, 20919
--   29074:   29075, 29076
--   29441:   29446, 29444, 29445, 29447
INSERT INTO spell_proc_event(entry,cooldown) VALUES
(27561,20000),
(3582,10000),
(3417,4000),
(8876,4000),
(5202,3000),
(7849,5000),
(7445,5000),
(7446,5000),
(12281,200),
(15641,5000),
(13879,1000),
(13960,200),
(13767,6000),
(14869,8000),
(14796,8000),
(12787,4000),
(15573,4000),
(14178,8000),
(15733,3000),
(19449,3000),
(15506,4000),
(14870,8000),
(16792,2000),
(15876,9000),
(15852,10000),
(18189,1000),
(18983,30000),
(19194,3000),
(19818,3000),
(18943,3000),
(19362,3000),
(19817,3000),
(23378,3000),
(21853,5000),
(24256,240000),
(27539,10000),
(26341,20000),
(29220,10000),
(31255,5000);