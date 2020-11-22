####################################
## EVERYTICK: Where everything in ##
## the core RR Datapack runs from ##
####################################

#Handling new/lobby players and miscellaneous stuff (prioritized in tick order)
function everytick:new_player
execute as @e[tag=Selection,type=armor_stand] run function everytick:leave_game
execute as @e[tag=Selection,type=armor_stand] run function everytick:general_settings_or_hotfixes

#Team/inventory counting and game-related effects
execute as @e[tag=Selection,type=armor_stand] run function everytick:team_count
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s invCount 0
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,tag=doHotbarLimit,type=armor_stand] run function items:invcount
execute as @e[tag=Selection,type=armor_stand] run function game:gamestart
execute as @e[tag=Selection,tag=GameStarted,type=armor_stand] at @s run function game:ingame
execute as @e[tag=Selection,type=armor_stand] run function everytick:regen_system

#Night vision/saturation and more lobby functionality
effect give @a[team=Lobby] night_vision 1000000 100 true
effect give @a saturation 1000000 0 true
function lobby:bookwarp
execute as @a[scores={displayinfo=1..}] run function lobby:displayinfo
execute as @a[team=Lobby] run function everytick:score_reset
execute unless entity @e[tag=Selection,tag=GameStarted,type=armor_stand] run function lobby:credits/cycle
function lobby:parkour/parkour

#Handling portals/roof with players/utilities
execute as @e[tag=Selection,type=armor_stand] run function everytick:cancel_utility
execute as @e[tag=Selection,type=armor_stand] run function everytick:player_portal

#Antidupe and arrow replacement
execute as @a unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] at @s if entity @s[y=-2000,dy=1980,scores={ThrowPlat=..0}] run function game:void
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] run function items:antidupe
execute as @a unless entity @s[team=!Yellow,team=!Blue] run function items:wrongarrows/wrongarrows

#Game ending and arena clearing
execute as @e[tag=Selection,tag=GameEnd,type=armor_stand] run function game:gameend
execute as @e[tag=Selection,tag=SuddenDeath,type=armor_stand] run function game:suddendeath
kill @e[tag=PlacerClear,tag=Cleared,tag=BasePlaced,type=area_effect_cloud]
execute as @e[tag=Selection,tag=!GameEnd,tag=!EditedSettings,type=armor_stand] run function arenaclear:customizer