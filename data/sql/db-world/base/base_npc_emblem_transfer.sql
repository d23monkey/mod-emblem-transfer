SET @Entry      := 100000,
    @Model      := 16804, -- Elven Jeweler
    @Name       := "Turco",
    @Title      := "Emblem Transfer",
	@Name1      := "图尔科",
    @Title1     := "徽章转换";

-- NPC
DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `ScriptName`) VALUES
(@Entry, @Name, @Title, "Buy", 0, 80, 80, 35, 1, 1, 1.14286, 1, 0, 1, 2, 7, 138936390, 1, 16777216, "npc_emblem_transfer");
DELETE FROM `creature_template_locale` WHERE `entry`=@Entry;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Entry, 'zhCN', @Name1, @Title1, 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID`=@Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 0, @Model, 1, 1, 1);

-- NPC Text
DELETE FROM `npc_text` WHERE `ID`=@Entry;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@Entry, 'Greetings $N. I can transfer your emblems to another character for a small fee.');

DELETE FROM `npc_text_locale` WHERE `ID`=@Entry;
INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`) VALUES
(@Entry, 'esES', 'Saludos $N. Puedo transferir tus emblemas a otro personaje por un pequeño precio.'),
(@Entry, 'zhCN', '你好 $N。我可以帮你以一小笔费用将你的徽章转移到另一个角色上。');
