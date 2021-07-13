##Kill players inside of portals (prevent Nether entry)

#Detect players near portals
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 11 38 -74 air if entity @s[x=-9,dx=20,y=38,dy=19,z=-74,dz=1] run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 13 38 -74 air if entity @s[x=13,dx=20,y=38,dy=19,z=-74,dz=1] run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 11 38 74 air if entity @s[x=-9,dx=20,y=38,dy=19,z=74,dz=1] run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 13 38 74 air if entity @s[x=13,dx=20,y=38,dy=19,z=74,dz=1] run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld if block ~ ~ ~ nether_portal run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld if block ~ ~ ~-0.5 nether_portal run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld if block ~ ~ ~0.5 nether_portal run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld if block ~0.5 ~ ~ nether_portal run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld if block ~-0.5 ~ ~ nether_portal run tag @s add portalKill

#Necessary effects/tags
execute as @a[tag=portalKill] run tellraw @a ["",{"selector":"@s"},{"text":" went too close to a Nether Portal"}]
effect clear @a[tag=portalKill]
effect give @a[tag=portalKill] night_vision 1000000 100 true
effect give @a[tag=portalKill] resistance 1 100 true
effect give @a[tag=portalKill] instant_health 1 100 true
effect give @a[tag=portalKill] fire_resistance 2 100 true
scoreboard players add @a[tag=portalKill] deaths 1
scoreboard players add @a[tag=portalKill] death 1
scoreboard players add @a[tag=portalKill] respawn 1
execute as @s[tag=GameEnd] run scoreboard players remove @a[tag=portalKill] deaths 1

#No fall damage
scoreboard players set @a[tag=portalKill] voidNoFallCount 0
effect give @a[scores={voidNoFallCount=0}] slow_falling 1 1 true
scoreboard players add @a[scores={voidNoFallCount=0..2}] voidNoFallCount 1
effect clear @a[scores={voidNoFallCount=2}] slow_falling
scoreboard players reset @a[scores={voidNoFallCount=2}] voidNoFallCount

#Teleport back to spawnpoint
execute unless entity @s[tag=customSpawns] run tp @a[team=Blue,tag=portalKill] 12 64 -66 0 0
execute unless entity @s[tag=customSpawns] run tp @a[team=Yellow,tag=portalKill] 12 64 66 -180 0
execute as @a[tag=portalKill,predicate=custom:is_on_fire] at @s run function game:putoutfire
#In case somehow it's a Lobby player in a portal
execute as @a[team=!Blue,team=!Yellow,tag=portalKill] run kill @s
execute unless entity @s[tag=customSpawns] run tag @a[tag=portalKill] remove portalKill