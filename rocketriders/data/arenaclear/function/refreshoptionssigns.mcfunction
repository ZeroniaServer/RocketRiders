##Refreshes signs for individual Game Options (warped/crimson)
#Pierce Prevention
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_pierce_prevention/on run setblock -70 193 79 crimson_wall_sign[facing=east]
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_pierce_prevention/on run setblock -70 193 79 warped_wall_sign[facing=east]
execute if predicate game:gamemode_components/duel_settings_locked run setblock -70 193 79 crimson_wall_sign[facing=east]

#Hotbar Limit
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_hotbar_limit/on run setblock -70 191 78 crimson_wall_sign[facing=east]
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_hotbar_limit/on run setblock -70 191 78 warped_wall_sign[facing=east]
execute if predicate game:gamemode_components/duel_settings_locked run setblock -70 191 78 crimson_wall_sign[facing=east]

#Item Stacking
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/item_stacking/on run setblock -70 191 77 warped_wall_sign[facing=east]
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/item_stacking/on run setblock -70 191 77 crimson_wall_sign[facing=east]
execute if predicate game:gamemode_components/duel_settings_locked run setblock -70 191 77 crimson_wall_sign[facing=east]

#Tie/Sudden Death
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_tying/on run setblock -70 193 77 crimson_wall_sign[facing=east]
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_tying/on run setblock -70 193 77 warped_wall_sign[facing=east]
execute if predicate game:gamemode_components/duel_settings_locked run setblock -70 193 77 crimson_wall_sign[facing=east]

#Snipe Portals
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/snipe_portals/on run setblock -70 193 78 warped_wall_sign[facing=east]
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/snipe_portals/on run setblock -70 193 78 crimson_wall_sign[facing=east]
execute if predicate game:gamemode_components/duel_settings_locked run setblock -70 193 78 crimson_wall_sign[facing=east]

#TNT Cannoning
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_cannoning/on run setblock -70 192 79 crimson_wall_sign[facing=east]
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_cannoning/on run setblock -70 192 79 warped_wall_sign[facing=east]
execute if predicate game:gamemode_components/duel_settings_locked run setblock -70 192 79 crimson_wall_sign[facing=east]

#Impact Utilities
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/impact_utilities/on run setblock -70 192 77 warped_wall_sign[facing=east]
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/impact_utilities/on run setblock -70 192 77 crimson_wall_sign[facing=east]
execute if predicate game:gamemode_components/duel_settings_locked run setblock -70 192 77 crimson_wall_sign[facing=east]


##WORLD SETTINGS
#Player Credits
execute if predicate game:world_options/show_extra_player_credits/on run setblock -69 191 73 warped_wall_sign[facing=east]
execute unless predicate game:world_options/show_extra_player_credits/on run setblock -69 191 73 crimson_wall_sign[facing=east]


####RESTORE DEFAULTS####
##Individual signs
execute if entity @s[predicate=!game:gamemode_components/duel_settings_locked,tag=!decosLocked] run data modify block -57 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"#888888","click_event":{"action":"run_command","command":"/tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add RestoreDefault"}}
execute if entity @s[predicate=!game:gamemode_components/duel_settings_locked,tag=!decosLocked] run data modify block -57 192 78 front_text.messages[2] set value {"text":"Base Details","color":"#888888","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless entity @s[predicate=!game:gamemode_components/duel_settings_locked,tag=!decosLocked] run data modify block -57 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"#888888","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this gamemode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute unless entity @s[predicate=!game:gamemode_components/duel_settings_locked,tag=!decosLocked] run data modify block -57 192 78 front_text.messages[2] set value {"text":"Base Details","color":"#888888","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
data modify block -69 193 74 front_text.messages[1] set value {"text":"Restore Default","color":"light_purple","click_event":{"action":"run_command","command":"/scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode = @e[x=0,type=armor_stand,tag=rr_normal] gamemodeID"}}
data modify block -69 193 74 front_text.messages[2] set value {"text":"Gamemode","color":"light_purple","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
data modify block -69 193 74 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"/scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[1] set value {"text":"Disable All","color":"aqua","click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[2] set value {"text":"Modifiers","color":"aqua","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshmodifiersign"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[1] set value {"text":"Disable All","color":"aqua","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this gamemode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 193 75 front_text.messages[2] set value {"text":"Modifiers","color":"aqua","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"yellow","click_event":{"action":"run_command","command":"/tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add DefaultOptions"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[2] set value {"text":"Game Rules","color":"yellow","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[1] set value {"text":"Restore Default","color":"yellow","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this gamemode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -70 192 78 front_text.messages[2] set value {"text":"Game Rules","color":"yellow","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[0] set value {"text":""}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[1] set value {"text":"Enable All","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:enableitems"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[2] set value {"text":"Items","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute unless predicate game:gamemode_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"/execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,scores={refreshsigns=0}] run function arenaclear:refreshitemsigns"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[0] set value {"text":""}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[1] set value {"text":"Enable All","color":"black","bold":true,"click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"This action cannot be performed in this gamemode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 192 82 front_text.messages[2] set value {"text":"Items","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
data modify block -69 193 73 front_text.messages[0] set value {"text":""}
data modify block -69 193 73 front_text.messages[1] set value {"text":"Restore Default","color":"dark_green","click_event":{"action":"run_command","command":"/tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add DefaultWorld"}}
data modify block -69 193 73 front_text.messages[2] set value {"text":"World Settings","color":"dark_green","click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}

####GAME RULES####
#Pierce Prevention
execute unless predicate game:game_rules/disable_pierce_prevention/locked unless predicate game:game_rules/disable_pierce_prevention/on run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_pierce_prevention/locked if predicate game:game_rules/disable_pierce_prevention/on run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_pierce_prevention/forced_on run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_pierce_prevention/forced_off run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:gamemode_components/duel_settings_locked run \
  data modify block -70 193 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_pierce_prevention"},text:"Pierce Prevention"},{bold:true,color:"white",text:"Locked"},"",""]

#Hotbar Limit
execute unless predicate game:game_rules/disable_hotbar_limit/locked unless predicate game:game_rules/disable_hotbar_limit/on run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_hotbar_limit/locked if predicate game:game_rules/disable_hotbar_limit/on run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_hotbar_limit/forced_on run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_hotbar_limit/forced_off run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:gamemode_components/duel_settings_locked run \
  data modify block -70 191 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_hotbar_limit"},text:"Hotbar Limit"},{bold:true,color:"white",text:"Locked"},"",""]

#Item Stacking
execute unless predicate game:game_rules/item_stacking/locked if predicate game:game_rules/item_stacking/on run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/item_stacking/locked unless predicate game:game_rules/item_stacking/on run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/item_stacking/forced_on run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/item_stacking/forced_off run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:gamemode_components/duel_settings_locked run \
  data modify block -70 191 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/item_stacking"},text:"Item Stacking"},{bold:true,color:"white",text:"Locked"},"",""]

#Item Delay
execute unless predicate game:modifiers/minute_mix/on unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[0] set value {"text":"Item Delay:","color":"black","click_event":{"action":"run_command","command":"/tag @s[predicate=!custom:team/any_arena_team] add ItemDelayChange"}}
execute unless predicate game:modifiers/minute_mix/on unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[1] set value [{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"MaxItemSec"},"color":"black","bold":true},{"text":" seconds","color":"black","bold":false}]
execute unless predicate game:modifiers/minute_mix/on unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[3] set value {"text":"(Click to adjust)","color":"gray","italic":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute if predicate game:modifiers/minute_mix/on unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[0] set value {"text":"Item Delay:","color":"black","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"Item Delay is not adjustable with the Minute Mix Modifier.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:modifiers/minute_mix/on unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[1] set value [{"text":"60","color":"black","bold":true},{"text":" seconds","color":"black","bold":false}]
execute if predicate game:modifiers/minute_mix/on unless predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[3] set value {"text":"Locked","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute if predicate game:game_rules/item_delay/locked run data modify block -70 191 79 front_text.messages[1] set value [{"text":"XX","color":"black","bold":true},{"text":" seconds","color":"black","bold":false}]
execute if predicate game:game_rules/item_delay/locked run data modify block -70 191 79 front_text.messages[3] set value {"text":"Locked","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[0] set value {"text":"Item Delay:","color":"black","click_event":{"action":"run_command","command":"/tellraw @s {\"text\":\"Game Rules are not adjustable in this gamemode.\",\"color\":\"dark_gray\",\"italic\":true}"}}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[1] set value [{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"MaxItemSec"},"color":"black","bold":true},{"text":" seconds","color":"black","bold":false}]
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -70 191 79 front_text.messages[3] set value {"text":"Locked","color":"black","bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}

#Tie/Sudden Death
execute unless predicate game:game_rules/disable_tying/locked unless predicate game:game_rules/disable_tying/on run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tie/Sudden Death"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_tying/locked if predicate game:game_rules/disable_tying/on run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tie/Sudden Death"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_tying/forced_on run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tie/Sudden Death"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_tying/forced_off run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tie/Sudden Death"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:gamemode_components/duel_settings_locked run \
  data modify block -70 193 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_tying"},text:"Tie/Sudden Death"},{bold:true,color:"white",text:"Locked"},"",""]

#Snipe Portals
execute unless predicate game:game_rules/snipe_portals/locked if predicate game:game_rules/snipe_portals/on run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/snipe_portals/locked unless predicate game:game_rules/snipe_portals/on run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/snipe_portals/forced_on run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/snipe_portals/forced_off run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:gamemode_components/duel_settings_locked run \
  data modify block -70 193 78 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/snipe_portals"},text:"Snipe Portals"},{bold:true,color:"white",text:"Locked"},"",""]

#TNT Cannoning
execute unless predicate game:game_rules/disable_cannoning/locked unless predicate game:game_rules/disable_cannoning/on run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/disable_cannoning/locked if predicate game:game_rules/disable_cannoning/on run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_cannoning/forced_on run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_cannoning/forced_off run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:gamemode_components/duel_settings_locked run \
  data modify block -70 192 79 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/disable_cannoning"},text:"TNT Cannoning"},{bold:true,color:"white",text:"Locked"},"",""]

#Impact Utilities
execute unless predicate game:game_rules/impact_utilities/locked if predicate game:game_rules/impact_utilities/on run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:game_rules/impact_utilities/locked unless predicate game:game_rules/impact_utilities/on run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"red",text:"Disabled"},"",""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/impact_utilities/forced_on run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/impact_utilities/forced_off run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"red",text:"Disabled"},{bold:true,color:"white",text:"Locked"},""]
execute if predicate game:gamemode_components/duel_settings_locked run \
  data modify block -70 192 77 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/impact_utilities"},text:"Impact Utilities"},{bold:true,color:"white",text:"Locked"},"",""]

####WORLD SETTINGS####
#Player Credits
execute if predicate game:world_options/show_extra_player_credits/on run \
  data modify block -69 191 73 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/show_extra_player_credits"},text:"Player Credits"},{bold:true,color:"green",text:"Enabled"},"",""]
execute unless predicate game:world_options/show_extra_player_credits/on run \
  data modify block -69 191 73 front_text.messages set value [{color:"white",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_option_sign/show_extra_player_credits"},text:"Player Credits"},{bold:true,color:"red",text:"Disabled"},"",""]

#Daytime
data modify block -69 192 73 front_text.messages[0] set value {"text":"Daytime:","color":"dark_green","click_event":{"action":"run_command","command":"/tag @s[predicate=!custom:team/any_arena_team] add daytimeChange"}}
data modify block -69 192 73 front_text.messages[3] set value {"text":"(Click to adjust)","color":"gray","italic":true,"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}
execute store result score $daytime var run time query daytime
execute if score $daytime var matches 0..100 run data modify block -69 192 73 front_text.messages[1] set value {"text":"Sunrise","color":"green","bold":true}
execute if score $daytime var matches 1 run data modify block -69 192 73 front_text.messages[1] set value [{"text":"1","color":"dark_green","bold":true},{"text":" tick","color":"green","bold":false}]
execute if score $daytime var matches 900..1100 run data modify block -69 192 73 front_text.messages[1] set value {"text":"Morning","color":"green","bold":true}
execute if score $daytime var matches 5900..6100 run data modify block -69 192 73 front_text.messages[1] set value {"text":"Noon","color":"green","bold":true}
execute if score $daytime var matches 12900..13100 run data modify block -69 192 73 front_text.messages[1] set value {"text":"Sunset","color":"green","bold":true}
execute if score $daytime var matches 17900..18100 run data modify block -69 192 73 front_text.messages[1] set value {"text":"Midnight","color":"green","bold":true}
execute if score $daytime var matches 23900..23999 run data modify block -69 192 73 front_text.messages[1] set value {"text":"Sunrise","color":"green","bold":true}
execute unless score $daytime var matches 0..100 unless score $daytime var matches 1 unless score $daytime var matches 900..1100 unless score $daytime var matches 5900..6100 unless score $daytime var matches 12900..13100 unless score $daytime var matches 17900..18100 unless score $daytime var matches 23900..23999 run data modify block -69 192 73 front_text.messages[1] set value [{"score":{"name":"$daytime","objective":"var"},"color":"green","bold":true},{"text":" ticks","color":"dark_green","bold":false}]

tag @s add SignsRefreshed