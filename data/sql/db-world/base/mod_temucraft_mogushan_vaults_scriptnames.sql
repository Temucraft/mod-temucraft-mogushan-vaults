-- mod-temucraft-mogushan-vaults: script names (from the LegionCore 7.3.5 world database the scripts come from)
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1008, 0, 'instance_mogu_shan_vault', 0) ON DUPLICATE KEY UPDATE `script` = VALUES(`script`);
UPDATE `creature_template` SET `ScriptName` = 'boss_generic_guardian' WHERE `entry` = 59915;
UPDATE `creature_template` SET `ScriptName` = 'boss_feng' WHERE `entry` = 60009;
UPDATE `creature_template` SET `ScriptName` = 'boss_generic_guardian' WHERE `entry` = 60043;
UPDATE `creature_template` SET `ScriptName` = 'boss_generic_guardian' WHERE `entry` = 60047;
UPDATE `creature_template` SET `ScriptName` = 'boss_generic_guardian' WHERE `entry` = 60051;
UPDATE `creature_template` SET `ScriptName` = 'boss_stone_guard_controler' WHERE `entry` = 60089;
UPDATE `creature_template` SET `ScriptName` = 'boss_garajal' WHERE `entry` = 60143;
UPDATE `creature_template` SET `ScriptName` = 'mob_shadowy_minion' WHERE `entry` = 60184;
UPDATE `creature_template` SET `ScriptName` = 'mob_spirit_totem' WHERE `entry` = 60240;
UPDATE `creature_template` SET `ScriptName` = 'mob_lightning_fist' WHERE `entry` = 60241;
UPDATE `creature_template` SET `ScriptName` = 'mob_zandalari_skullcharger' WHERE `entry` = 60375;
UPDATE `creature_template` SET `ScriptName` = 'mob_woi_add_generic' WHERE `entry` = 60396;
UPDATE `creature_template` SET `ScriptName` = 'mob_woi_add_generic' WHERE `entry` = 60397;
UPDATE `creature_template` SET `ScriptName` = 'mob_woi_add_generic' WHERE `entry` = 60398;
UPDATE `creature_template` SET `ScriptName` = 'boss_generic_imperator' WHERE `entry` = 60399;
UPDATE `creature_template` SET `ScriptName` = 'boss_generic_imperator' WHERE `entry` = 60400;
UPDATE `creature_template` SET `ScriptName` = 'boss_elegon' WHERE `entry` = 60410;
UPDATE `creature_template` SET `ScriptName` = 'mob_wild_spark' WHERE `entry` = 60438;
UPDATE `creature_template` SET `ScriptName` = 'mob_stone_quilen' WHERE `entry` = 60576;
UPDATE `creature_template` SET `ScriptName` = 'boss_spirit_kings' WHERE `entry` = 60701;
UPDATE `creature_template` SET `ScriptName` = 'boss_spirit_kings' WHERE `entry` = 60708;
UPDATE `creature_template` SET `ScriptName` = 'boss_spirit_kings' WHERE `entry` = 60709;
UPDATE `creature_template` SET `ScriptName` = 'boss_spirit_kings' WHERE `entry` = 60710;
UPDATE `creature_template` SET `ScriptName` = 'mob_undying_shadow' WHERE `entry` = 60731;
UPDATE `creature_template` SET `ScriptName` = 'npc_empyreal_focus' WHERE `entry` = 60776;
UPDATE `creature_template` SET `ScriptName` = 'npc_feng_soul_fragment' WHERE `entry` = 60781;
UPDATE `creature_template` SET `ScriptName` = 'npc_flanking_mogu' WHERE `entry` = 60847;
UPDATE `creature_template` SET `ScriptName` = 'npc_energy_charge' WHERE `entry` = 60913;
UPDATE `creature_template` SET `ScriptName` = 'mob_shadowy_minion' WHERE `entry` = 60940;
UPDATE `creature_template` SET `ScriptName` = 'mob_pinning_arrow' WHERE `entry` = 60958;
UPDATE `creature_template` SET `ScriptName` = 'boss_spirit_kings_controler' WHERE `entry` = 60984;
UPDATE `creature_template` SET `ScriptName` = 'mob_cursed_mogu_sculture' WHERE `entry` = 61334;
UPDATE `creature_template` SET `ScriptName` = 'mob_soul_cutter' WHERE `entry` = 62003;
UPDATE `creature_template` SET `ScriptName` = 'mob_enormous_stone_quilen' WHERE `entry` = 64183;
UPDATE `creature_template` SET `ScriptName` = 'npc_buff_controller' WHERE `entry` = 65297;
UPDATE `creature_template` SET `ScriptName` = 'npc_woi_controller' WHERE `entry` = 200467;
UPDATE `gameobject_template` SET `ScriptName` = 'go_stolen_essences_of_stone' WHERE `entry` = 211626;
UPDATE `gameobject_template` SET `ScriptName` = 'go_stolen_essences_of_stone' WHERE `entry` = 211628;
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_boss_maddening_shout','spell_elegon_destabilizing_energies','spell_elegon_draw_power','spell_elegon_vortex_filter','spell_eperor_energizing_smash','spell_jasper_chains','spell_life_fragile','spell_meng_crazed','spell_mogu_arcane_resonance','spell_mogu_arcane_velocity','spell_mogu_epicenter','spell_mogu_inversion','spell_mogu_petrification','spell_mogu_wildfire_infusion','spell_mogu_wildfire_spark','spell_petrification','spell_pinned_down','spell_soul_back');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(117708, 'spell_boss_maddening_shout'),
(132222, 'spell_elegon_destabilizing_energies'),
(118010, 'spell_elegon_draw_power'),
(118011, 'spell_elegon_draw_power'),
(118012, 'spell_elegon_draw_power'),
(118014, 'spell_elegon_draw_power'),
(118015, 'spell_elegon_draw_power'),
(118016, 'spell_elegon_draw_power'),
(117912, 'spell_elegon_vortex_filter'),
(117914, 'spell_elegon_vortex_filter'),
(132222, 'spell_elegon_vortex_filter'),
(116550, 'spell_eperor_energizing_smash'),
(130395, 'spell_jasper_chains'),
(116227, 'spell_life_fragile'),
(117737, 'spell_meng_crazed'),
(117756, 'spell_meng_crazed'),
(116434, 'spell_mogu_arcane_resonance'),
(116365, 'spell_mogu_arcane_velocity'),
(116040, 'spell_mogu_epicenter'),
(118300, 'spell_mogu_inversion'),
(118302, 'spell_mogu_inversion'),
(118304, 'spell_mogu_inversion'),
(118305, 'spell_mogu_inversion'),
(118307, 'spell_mogu_inversion'),
(118308, 'spell_mogu_inversion'),
(132296, 'spell_mogu_inversion'),
(132297, 'spell_mogu_inversion'),
(125092, 'spell_mogu_petrification'),
(116816, 'spell_mogu_wildfire_infusion'),
(116583, 'spell_mogu_wildfire_spark'),
(115852, 'spell_petrification'),
(116006, 'spell_petrification'),
(116036, 'spell_petrification'),
(116057, 'spell_petrification'),
(118135, 'spell_pinned_down'),
(120715, 'spell_soul_back');
-- not bound to anything in LegionCore's database either: mob_cobalt_mine, npc_celestial_protector, npc_emperor_terracotta_boss, npc_emperor_titan_spark
