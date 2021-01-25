##############################################
## VOID: How players who fall into the void ##
## are handled by a quick fake-death system ##
##############################################

#Remove CTF tags
tag @s remove CarryFB1
tag @s remove CarryFB2
tag @s remove CarryFY1
tag @s remove CarryFY2
tag @s remove CarryFlag

##Death message for non-Spectator players (hackfix: works for crossers too)
execute if entity @s[tag=!crosser,team=!Spectator] run tellraw @a ["",{"selector":"@s"},{"text":" fell out of the world"}]
execute if entity @s[tag=crosser,team=!Spectator] run tellraw @a ["",{"selector":"@s"},{"text":" tried to leave their base"}]

##Record death statistics for non-Spectator players
scoreboard players add @s[team=!Spectator,tag=!crosser] FellVoid 1
scoreboard players add @s[team=!Spectator] deaths 1
scoreboard players add @s[team=!Spectator] death 1
scoreboard players add @s[team=!Spectator] respawn 1

##Non-Spectator players lose all effects and get immunity effects
effect clear @s[team=!Spectator]
effect give @s night_vision 1000000 100 true
effect give @s[team=!Spectator] resistance 1 200 true
effect give @s[team=!Spectator] instant_health 1 200 true
effect give @s[team=!Spectator] fire_resistance 4 200 true

##Non-Spectator players get no fall damage
scoreboard players set @s[team=!Spectator] voidNoFallCount 0
effect give @s[scores={voidNoFallCount=0}] slow_falling 1 1 true

##Teleport non-Spectators back to base
execute unless entity @e[tag=Selection,type=armor_stand,tag=customSpawns] run tp @s[team=Blue] 12 64 -66 0 0
execute unless entity @e[tag=Selection,type=armor_stand,tag=customSpawns] run tp @s[team=Yellow] 12 64 66 -180 0

##Teleport Spectators back to center
tp @s[team=Spectator] 12 100 0.5 90 90

##Put out fire, if necessary
execute as @s[team=!Spectator,predicate=custom:is_on_fire] at @s run function game:putoutfire