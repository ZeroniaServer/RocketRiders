#####################################################
## CUSTOMIZER: The brain of the Modification Room  ##
## Allows items, modifiers, game modes, bases, and ##
## other options/settings to be selected per game  ##
#####################################################

##Particles around confirm changes sign
execute if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 79.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:2} -68.7 190.5 77.5 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

##GAME MODE SELECTION
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
execute if entity @s[tag=DefaultOptions,tag=!GamemodeRefreshed] run scoreboard players reset $item_delay config
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
execute if entity @s[tag=DefaultWorld,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
tag @s[tag=DefaultWorld] remove DefaultWorld
