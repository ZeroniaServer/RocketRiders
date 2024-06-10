##############################################
## VOID: How players who fall into the void ##
## are handled by a quick instadeath system ##
##############################################

##Record death statistics
tag @s[team=!Spectator] add FellInVoid
scoreboard players add @s[tag=crosser] deaths 1
scoreboard players add @s[tag=crosser] death 1
scoreboard players add @s[tag=crosser] respawn 1

##Cry About It achievement
execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={servermode=0},tag=!SMCustom] if entity @s[tag=CheckCry] run advancement grant @s only achievements:rr_challenges/cryaboutit 

##Become one with the void
damage @s[team=!Spectator,tag=!crosser] 100.0 out_of_world

#Remove death during end game phase
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=GameEnd] run scoreboard players remove @s deaths 1

#Handle Spectators
tp @s[team=Spectator] 12 100 0.5 90 90

#Handle crossers (Rocket Residers)
execute if entity @s[tag=crosser] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" tried to leave their base"}]
effect give @s[tag=crosser] resistance 1 200 true
effect give @s[tag=crosser] instant_health 1 200 true
effect give @s[tag=crosser] fire_resistance 4 200 true
scoreboard players set @s[tag=crosser] voidNoFallCount 0
tp @s[tag=crosser,team=Blue] 12 64 -66 0 0
tp @s[tag=crosser,team=Yellow] 12 64 66 -180 0
execute if entity @s[tag=crosser,predicate=custom:is_on_fire] at @s run function game:putoutfire