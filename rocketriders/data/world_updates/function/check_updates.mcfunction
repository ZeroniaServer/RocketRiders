## Runs once all chunks are loaded

scoreboard players set $applied_an_update global 0

# Check updates
execute unless score $WorldVersion CmdData matches 1200.. run function world_updates:do_update {version_id: 1200, function: "world_updates:1_2_0/update", version_display_name: "1.2.0", is_indev: false}
execute unless score $WorldVersion CmdData matches 1210.. run function world_updates:do_update {version_id: 1210, function: "world_updates:1_2_1/update", version_display_name: "1.2.1", is_indev: false}
execute unless score $WorldVersion CmdData matches 1220.. run function world_updates:do_update {version_id: 1220, function: "world_updates:1_2_2/update", version_display_name: "1.2.2", is_indev: false}
execute unless score $WorldVersion CmdData matches 1230.. run function world_updates:do_update {version_id: 1230, function: "world_updates:1_2_3/update", version_display_name: "1.2.3", is_indev: false}
execute unless score $WorldVersion CmdData matches 1240.. run function world_updates:do_update {version_id: 1240, function: "world_updates:1_2_4/update", version_display_name: "1.2.4", is_indev: false}
execute unless score $WorldVersion CmdData matches 1250.. run function world_updates:do_update {version_id: 1250, function: "world_updates:1_2_5/update", version_display_name: "1.2.5", is_indev: false}
execute unless score $WorldVersion CmdData matches 1260.. run function world_updates:do_update {version_id: 1260, function: "world_updates:1_2_6/update", version_display_name: "1.2.6", is_indev: false}
execute unless score $WorldVersion CmdData matches 1270.. run function world_updates:do_update {version_id: 1270, function: "world_updates:1_2_7/update", version_display_name: "1.2.7", is_indev: false}
execute unless score $WorldVersion CmdData matches 1280.. run function world_updates:do_update {version_id: 1280, function: "world_updates:1_2_8/update", version_display_name: "1.2.8", is_indev: false}
execute unless score $WorldVersion CmdData matches 1290.. run function world_updates:do_update {version_id: 1290, function: "world_updates:1_2_9/update", version_display_name: "1.2.9", is_indev: false}
execute unless score $WorldVersion CmdData matches 1291.. run function world_updates:do_update {version_id: 1291, function: "world_updates:1_2_10/update", version_display_name: "1.2.10", is_indev: false}
execute unless score $WorldVersion CmdData matches 1292.. run function world_updates:do_update {version_id: 1292, function: "world_updates:1_2_11/update", version_display_name: "1.2.11", is_indev: false}
execute unless score $WorldVersion CmdData matches 1293.. run function world_updates:do_update {version_id: 1293, function: "world_updates:1_2_12/update", version_display_name: "1.2.12", is_indev: false}
execute unless score $WorldVersion CmdData matches 1301.. run function world_updates:do_update {version_id: 1301, function: "world_updates:1_2_13/update", version_display_name: "1.2.13", is_indev: false}
execute unless score $WorldVersion CmdData matches 1302.. run function world_updates:do_update {version_id: 1302, function: "world_updates:1_2_14/update", version_display_name: "1.2.14", is_indev: false}
execute unless score $WorldVersion CmdData matches 1303.. run function world_updates:do_update {version_id: 1303, function: "world_updates:1_2_15/update", version_display_name: "1.2.15", is_indev: false}

execute unless score $WorldVersion CmdData matches 1304.. run function world_updates:do_update {version_id: 1304, function: "world_updates:1_3_0-pre1/update", version_display_name: "1.3.0", is_indev: false}
execute unless score $WorldVersion CmdData matches 1305.. run function world_updates:do_update {version_id: 1305, function: "world_updates:1_3_0-pre7/update", version_display_name: "1.3.0-pre7", is_indev: true}
execute unless score $WorldVersion CmdData matches 1306.. run function world_updates:do_update {version_id: 1306, function: "world_updates:1_3_0-pre8/update", version_display_name: "1.3.0-pre8", is_indev: true}
execute unless score $WorldVersion CmdData matches 1307.. run function world_updates:do_update {version_id: 1307, function: "world_updates:1_3_0-pre10/update", version_display_name: "1.3.0-pre10", is_indev: true}
execute unless score $WorldVersion CmdData matches 1308.. run function world_updates:do_update {version_id: 1308, function: "world_updates:1_3_0-pre11/update", version_display_name: "1.3.0-pre11", is_indev: true}
