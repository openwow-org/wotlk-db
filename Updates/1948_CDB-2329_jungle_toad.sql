-- Add target NPC 15010 (Jungle Toad) for spell 24062 (Explode Toad)
DELETE FROM spell_script_target WHERE entry = 24062;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES (24062, 1, 15010, 0);

