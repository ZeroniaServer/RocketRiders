####################################################
## CUSTOMIZER: The brain of the Modification Room ##
## Allows items, modifiers, gamemodes, bases, and ##
## other options/settings to be selected per game ##
####################################################

##Arrow pointing down into the lobby
execute if predicate rr:has_modification_room unless score $extra_match_repetitions config matches 1.. unless entity @e[type=block_display,tag=LobbyArrowDisplay] if predicate custom:periodic_tick/3 unless score $lockmodroom CmdData matches 1 run function lobby:spawnarrow
scoreboard players add @e[type=block_display,tag=LobbyArrowDisplay] CmdData 1
execute as @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=1}] run function lobby:arrow_up
execute as @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=11}] run function lobby:arrow_down
scoreboard players reset @e[type=block_display,tag=LobbyArrowDisplay,scores={CmdData=21..}] CmdData

##Particles around confirm changes sign
execute if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 79.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 77.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

##GAMEMODE SELECTION
scoreboard players remove @s SetGamemode 1
scoreboard players operation @s SetGamemode %= maxID gamemodeID
scoreboard players add @s SetGamemode 1

##RESTORE DEFAULT DETAILS
execute if entity @s[tag=RestoreDefault] run scoreboard players set $arena_details/top config 1
execute if entity @s[tag=RestoreDefault] run scoreboard players set $arena_details/top_sides config 1
execute if entity @s[tag=RestoreDefault] run scoreboard players set $arena_details/middle config 1
execute if entity @s[tag=RestoreDefault] run scoreboard players set $arena_details/bottom config 1
execute if entity @s[tag=RestoreDefault] run scoreboard players set $arena_details/portal config 1
execute if entity @s[tag=RestoreDefault] run function arenaclear:refreshcustomizer
tag @s[tag=RestoreDefault] remove RestoreDefault

##RESTORE DEFAULT GAME RULES
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $disable_pierce_prevention config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $disable_tying config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $disable_hotbar_limit config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $item_stacking config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $snipe_portals config
execute unless score $item_delay config matches 5..30 run scoreboard players set $item_delay config 15
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players set $item_delay config 15
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players set @s MaxItemTime 300
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $extra_match_repetitions config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] if predicate rr:default_config/disable_cannoning run scoreboard players set $disable_cannoning config 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] unless predicate rr:default_config/disable_cannoning run scoreboard players reset $disable_cannoning config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] if predicate rr:default_config/impact_utilities run scoreboard players set $impact_utilities config 1
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] unless predicate rr:default_config/impact_utilities run scoreboard players reset $impact_utilities config
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultOptions] remove DefaultOptions

##RESTORE DEFAULT WORLD OPTIONS
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run scoreboard players reset $show_extra_player_credits config
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run function lobby:credits/stop
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run time set 12925t
execute unless score @s set_time_of_day matches 0..23999 store result score @s set_time_of_day run time query daytime
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultWorld] remove DefaultWorld

##ITEM DELAY
execute if predicate rr:has_modification_room if predicate game:modifiers/minute_mix/on run scoreboard players reset @a[x=0,predicate=custom:team/lobby] set_item_delay
execute if predicate rr:has_modification_room unless predicate game:game_rules/item_delay/locked as @a[x=0,predicate=!custom:team/any_arena_team,scores={set_item_delay=-1}] run function arenaclear:itemdelay/show_dialog
execute if predicate rr:has_modification_room unless predicate game:game_rules/item_delay/locked as @a[x=0,predicate=!custom:team/any_arena_team,scores={set_item_delay=-2147483648..}] unless score @s set_item_delay matches -2..0 run function arenaclear:itemdelay
execute if predicate rr:has_modification_room if predicate game:game_rules/item_delay/locked as @a[x=0,predicate=!custom:team/any_arena_team,scores={set_item_delay=-2147483648..}] unless score @s set_item_delay matches -2..0 run tellraw @s [{"text":"Item Delay is not adjustable in this gamemode.","color":"dark_gray","italic":true}]
scoreboard players reset @a[x=0] set_item_delay
execute if predicate rr:has_modification_room unless predicate game:modifiers/minute_mix/on run scoreboard players set @a[x=0] set_item_delay -2
execute if predicate rr:has_modification_room unless predicate game:modifiers/minute_mix/on run scoreboard players enable @a[x=0,predicate=custom:team/lobby] set_item_delay

##TIME OF DAY
execute as @a[x=0,predicate=!custom:team/any_arena_team,scores={set_time_of_day=-1}] run function arenaclear:time_of_day/show_dialog
execute as @a[x=0,predicate=!custom:team/any_arena_team,scores={set_time_of_day=-2147483648..}] unless score @s set_time_of_day matches -2..-1 run function arenaclear:set_time_of_day
scoreboard players reset @a[x=0] set_time_of_day
execute if predicate rr:has_modification_room run scoreboard players set @a[x=0,predicate=custom:team/lobby] set_time_of_day -2
execute if predicate rr:has_modification_room run scoreboard players enable @a[x=0,predicate=custom:team/lobby] set_time_of_day
