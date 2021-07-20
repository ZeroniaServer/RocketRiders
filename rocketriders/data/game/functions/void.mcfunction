##############################################
## VOID: How players who fall into the void ##
## are handled by a quick instadeath system ##
##############################################

##Record death statistics
scoreboard players add @s[team=!Spectator] FellVoid 1
scoreboard players add @s[tag=crosser] deaths 1
scoreboard players add @s[tag=crosser] death 1
scoreboard players add @s[tag=crosser] respawn 1

##Become one with the void
kill @s[team=!Spectator,tag=!crosser]

#Remove death during end game phase
execute if entity @e[type=armor_stand,tag=Selection,tag=GameEnd] run scoreboard players remove @s deaths 1

#Handle Spectators
tp @s[team=Spectator] 12 100 0.5 90 90

#Handle crossers (Rocket Residers)
execute if entity @s[tag=crosser] run tellraw @a ["",{"selector":"@s"},{"text":" tried to leave their base"}]
effect give @s[tag=crosser] resistance 1 200 true
effect give @s[tag=crosser] instant_health 1 200 true
effect give @s[tag=crosser] fire_resistance 4 200 true
scoreboard players set @s[tag=crosser] voidNoFallCount 0
tp @s[tag=crosser,team=Blue] 12 64 -66 0 0
tp @s[tag=crosser,team=Yellow] 12 64 66 -180 0
execute if entity @s[tag=crosser,predicate=custom:is_on_fire] at @s run function game:putoutfire