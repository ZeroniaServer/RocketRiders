##Refreshes signs for individual Game Options (warped/crimson)
#Pierce Prevention
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_pierce_prevention/on run setblock -70 193 79 crimson_wall_sign[facing=east]
execute unless predicate game:match_components/duel_settings_locked unless predicate game:game_rules/disable_pierce_prevention/on run setblock -70 193 79 warped_wall_sign[facing=east]
execute if predicate game:match_components/duel_settings_locked run setblock -70 193 79 crimson_wall_sign[facing=east]

#Hotbar Limit
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_hotbar_limit/on run setblock -70 191 78 crimson_wall_sign[facing=east]
execute unless predicate game:match_components/duel_settings_locked unless predicate game:game_rules/disable_hotbar_limit/on run setblock -70 191 78 warped_wall_sign[facing=east]
execute if predicate game:match_components/duel_settings_locked run setblock -70 191 78 crimson_wall_sign[facing=east]

#Item Stacking
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/item_stacking/on run setblock -70 191 77 warped_wall_sign[facing=east]
execute unless predicate game:match_components/duel_settings_locked unless predicate game:game_rules/item_stacking/on run setblock -70 191 77 crimson_wall_sign[facing=east]
execute if predicate game:match_components/duel_settings_locked run setblock -70 191 77 crimson_wall_sign[facing=east]

#Tiebreakers
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_tying/on run setblock -70 193 77 crimson_wall_sign[facing=east]
execute unless predicate game:match_components/duel_settings_locked unless predicate game:game_rules/disable_tying/on run setblock -70 193 77 warped_wall_sign[facing=east]
execute if predicate game:match_components/duel_settings_locked run setblock -70 193 77 crimson_wall_sign[facing=east]

#Snipe Portals
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/snipe_portals/on run setblock -70 193 78 warped_wall_sign[facing=east]
execute unless predicate game:match_components/duel_settings_locked unless predicate game:game_rules/snipe_portals/on run setblock -70 193 78 crimson_wall_sign[facing=east]
execute if predicate game:match_components/duel_settings_locked run setblock -70 193 78 crimson_wall_sign[facing=east]

#TNT Cannoning
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_cannoning/on run setblock -70 192 79 crimson_wall_sign[facing=east]
execute unless predicate game:match_components/duel_settings_locked unless predicate game:game_rules/disable_cannoning/on run setblock -70 192 79 warped_wall_sign[facing=east]
execute if predicate game:match_components/duel_settings_locked run setblock -70 192 79 crimson_wall_sign[facing=east]

#Impact Utilities
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/impact_utilities/on run setblock -70 192 77 warped_wall_sign[facing=east]
execute unless predicate game:match_components/duel_settings_locked unless predicate game:game_rules/impact_utilities/on run setblock -70 192 77 crimson_wall_sign[facing=east]
execute if predicate game:match_components/duel_settings_locked run setblock -70 192 77 crimson_wall_sign[facing=east]


##WORLD SETTINGS
#Player Credits
execute if predicate game:world_options/show_extra_player_credits/on run setblock -69 191 73 warped_wall_sign[facing=east]
execute unless predicate game:world_options/show_extra_player_credits/on run setblock -69 191 73 crimson_wall_sign[facing=east]


####RESTORE DEFAULTS####
##Individual signs
execute if entity @s[predicate=!game:match_components/duel_settings_locked,predicate=!game:match_components/arena/no_base_details] run data modify block -57 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"#888888","click_event":{"action":"run_command","command":"/tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add RestoreDefault"}}
execute if entity @s[predicate=!game:match_components/duel_settings_locked,predicate=!game:match_components/arena/no_base_details] run data modify block -57 192 78 front_text.messages[2] set value {"text":"Base Details","color":"#888888","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless entity @s[predicate=!game:match_components/duel_settings_locked,predicate=!game:match_components/arena/no_base_details] run data modify block -57 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"#888888","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this game mode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute unless entity @s[predicate=!game:match_components/duel_settings_locked,predicate=!game:match_components/arena/no_base_details] run data modify block -57 192 78 front_text.messages[2] set value {"text":"Base Details","color":"#888888","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
data modify block -69 193 74 front_text.messages[1] set value {"text":"Restore Default","color":"light_purple","click_event":{"action":"run_command","command":"/scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode = @e[x=0,type=armor_stand,tag=rr_normal] gamemodeID"}}
data modify block -69 193 74 front_text.messages[2] set value {"text":"Game Mode","color":"light_purple","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
data modify block -69 193 74 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"/scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[1] set value {"text":"Disable All","color":"aqua","click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[2] set value {"text":"Modifiers","color":"aqua","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshmodifiersign"}}
execute if predicate game:match_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[1] set value {"text":"Disable All","color":"aqua","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this game mode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:match_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[2] set value {"text":"Modifiers","color":"aqua","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"yellow","click_event":{"action":"run_command","command":"/tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add DefaultOptions"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[2] set value {"text":"Game Rules","color":"yellow","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute if predicate game:match_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"yellow","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this game mode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:match_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[2] set value {"text":"Game Rules","color":"yellow","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[0] set value {"text":""}
execute unless predicate game:match_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[1] set value {"text":"Enable All","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:enableitems"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[2] set value {"text":"Items","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:match_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns"}}
execute if predicate game:match_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[0] set value {"text":""}
execute if predicate game:match_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[1] set value {"text":"Enable All","color":"black","bold":true,"click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this game mode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:match_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[2] set value {"text":"Items","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
data modify block -69 193 73 front_text.messages[0] set value {"text":""}
data modify block -69 193 73 front_text.messages[1] set value {"text":"Restore Default","color":"dark_green","click_event":{"action":"run_command","command":"/tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add DefaultWorld"}}
data modify block -69 193 73 front_text.messages[2] set value {"text":"World Settings","color":"dark_green","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}

####GAME RULES####
#Pierce Prevention
execute unless predicate game:game_rules/disable_pierce_prevention/locked unless predicate game:game_rules/disable_pierce_prevention/on run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_pierce_prevention/locked if predicate game:game_rules/disable_pierce_prevention/on run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_pierce_prevention/forced_on run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_pierce_prevention/forced_off run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:match_components/duel_settings_locked run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"white",text:"Locked"},"",""]

#Hotbar Limit
execute unless predicate game:game_rules/disable_hotbar_limit/locked unless predicate game:game_rules/disable_hotbar_limit/on run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_hotbar_limit/locked if predicate game:game_rules/disable_hotbar_limit/on run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_hotbar_limit/forced_on run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_hotbar_limit/forced_off run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:match_components/duel_settings_locked run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"white",text:"Locked"},"",""]

#Item Stacking
execute unless predicate game:game_rules/item_stacking/locked if predicate game:game_rules/item_stacking/on run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/item_stacking/locked unless predicate game:game_rules/item_stacking/on run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/item_stacking/forced_on run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/item_stacking/forced_off run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:match_components/duel_settings_locked run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"white",text:"Locked"},"",""]

#Item Delay
execute store result score $temporary_item_delay_value var run function game:config/get_item_delay
execute unless predicate game:game_rules/item_delay/locked run \
  data modify block -70 191 79 front_text.messages set value [{click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_delay"},text:"Item Delay:"},["",{bold:true,score:{name:"$temporary_item_delay_value",objective:"var"}}," seconds"],"",{color:"gray",italic:true,text:"(Click to adjust)"}]
execute if predicate game:game_rules/item_delay/locked unless predicate game:match_components/no_item_timer run \
  data modify block -70 191 79 front_text.messages set value [{click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_delay"},text:"Item Delay:"},["",{bold:true,score:{name:"$temporary_item_delay_value",objective:"var"}}," seconds"],"",{bold:true,text:"Locked"}]
execute if predicate game:game_rules/item_delay/locked if predicate game:match_components/no_item_timer run \
  data modify block -70 191 79 front_text.messages set value [{click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_delay"},text:"Item Delay:"},["",{bold:true,text:"XX"}," seconds"],"",{bold:true,text:"Locked"}]

#Tie/Tiebreakers
execute unless predicate game:game_rules/disable_tying/locked unless predicate game:game_rules/disable_tying/on run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tiebreakers"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_tying/locked if predicate game:game_rules/disable_tying/on run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tiebreakers"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_tying/forced_on run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tiebreakers"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_tying/forced_off run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tiebreakers"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:match_components/duel_settings_locked run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tiebreakers"},{bold:true,color:"white",text:"Locked"},"",""]
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run data modify block -70 193 77 front_text.messages[0].text set value "Overtime"

#Snipe Portals
execute unless predicate game:game_rules/snipe_portals/locked if predicate game:game_rules/snipe_portals/on run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/snipe_portals/locked unless predicate game:game_rules/snipe_portals/on run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/snipe_portals/forced_on run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/snipe_portals/forced_off run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:match_components/duel_settings_locked run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"white",text:"Locked"},"",""]

#TNT Cannoning
execute unless predicate game:game_rules/disable_cannoning/locked unless predicate game:game_rules/disable_cannoning/on run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_cannoning/locked if predicate game:game_rules/disable_cannoning/on run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_cannoning/forced_on run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/disable_cannoning/forced_off run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:match_components/duel_settings_locked run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"white",text:"Locked"},"",""]

#Impact Utilities
execute unless predicate game:game_rules/impact_utilities/locked if predicate game:game_rules/impact_utilities/on run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/impact_utilities/locked unless predicate game:game_rules/impact_utilities/on run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/impact_utilities/forced_on run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:match_components/duel_settings_locked if predicate game:game_rules/impact_utilities/forced_off run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:match_components/duel_settings_locked run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"white",text:"Locked"},"",""]

####WORLD SETTINGS####
#Player Credits
execute if predicate game:world_options/show_extra_player_credits/on run \
  data modify block -69 191 73 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/show_extra_player_credits"},text:"Player Credits"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:world_options/show_extra_player_credits/on run \
  data modify block -69 191 73 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/show_extra_player_credits"},text:"Player Credits"},{bold:true,color:"red",text:"Disabled"},"",""]

#Time of Day
data modify block -69 192 73 front_text.messages[0] set value {color:"dark_green",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_time_sign"},text:"Time of Day:"}
data modify block -69 192 73 front_text.messages[3] set value {color:"gray",italic:true,text:"(Click to adjust)"}
execute store result score $displayed_hour var run function custom:get_daytime
scoreboard players add $displayed_hour var 6000
scoreboard players add $displayed_hour var 500
scoreboard players operation $displayed_hour var %= $24000 constant
scoreboard players operation $displayed_hour var /= $1000 constant
scoreboard players operation $displayed_hour_o_clock var = $displayed_hour var
scoreboard players remove $displayed_hour_o_clock var 1
scoreboard players operation $displayed_hour_o_clock var %= $12 constant
scoreboard players add $displayed_hour_o_clock var 1
execute if score $displayed_hour var matches 6 run data modify block -69 192 73 front_text.messages[1] set value {bold:true,color:"green",text:"Sunrise"}
execute if score $displayed_hour var matches 7 run data modify block -69 192 73 front_text.messages[1] set value {bold:true,color:"green",text:"Morning"}
execute if score $displayed_hour var matches 12 run data modify block -69 192 73 front_text.messages[1] set value {bold:true,color:"green",text:"Noon"}
execute if score $displayed_hour var matches 19 run data modify block -69 192 73 front_text.messages[1] set value {bold:true,color:"green",text:"Sunset"}
execute if score $displayed_hour var matches 0 run data modify block -69 192 73 front_text.messages[1] set value {bold:true,color:"green",text:"Midnight"}
execute if score $displayed_hour var matches 0..11 unless score $displayed_hour var matches 0 unless score $displayed_hour var matches 6..7 run data modify block -69 192 73 front_text.messages[1] set value [{bold:true,color:"green",score:{name:"$displayed_hour_o_clock",objective:"var"}},{bold:false,color:"dark_green",text:" A.M."}]
execute if score $displayed_hour var matches 12..23 unless score $displayed_hour var matches 12 unless score $displayed_hour var matches 19 run data modify block -69 192 73 front_text.messages[1] set value [{bold:true,color:"green",score:{name:"$displayed_hour_o_clock",objective:"var"}},{bold:false,color:"dark_green",text:" P.M."}]

tag @s add SignsRefreshed