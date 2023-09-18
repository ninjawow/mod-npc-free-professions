-- --------------------------------------------------------------------------------------
-- Free Profession NPC
-- --------------------------------------------------------------------------------------

SET @Entry:= 199999;

DELETE FROM `creature_template` WHERE `entry`=@Entry;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@Entry, 0, 0, 0, 0, 0, 21666, 0, 0, 0, 'Fercho el invencible', '|cff00ccffMaestro de profesiones|r', 'Speak', 0, 80, 80, 0, 35, 1, 1, 1.14286, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 'npc_free_professions', 0);

UPDATE `creature_template` SET `npcflag`=`npcflag`|1, `scale`=2, `flags_extra`=`flags_extra`|16777216 WHERE `entry`=@Entry;


-- spawmeando en la shop
REPLACE  into `creature`(`guid`,`id1`,`id2`,`id3`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) values
(15130653,199999,0,0,1,0,0,1,1,0,-11821.3,-4802.42,6.66624,2.28406,300,0,0,5342,0,0,0,0,0,'',NULL);
