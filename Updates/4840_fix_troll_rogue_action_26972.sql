-- 4840_fix_troll_rogue_action_26972.sql
-- Fix Troll (race 8) Rogue (class 4) starting action button.
-- 26972 = Summon Panda Cub (unknown to the player) -> 26297 = Berserking (known racial).
-- Mirrors the fix in Full_DB; this Update is needed because Full_DB is re-extracted from the .gz on install.
UPDATE `playercreateinfo_action`
SET `action` = 26297
WHERE `race` = 8 AND `class` = 4 AND `button` = 4 AND `action` = 26972;
