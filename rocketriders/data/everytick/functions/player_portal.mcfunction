##Kill players inside of portals (prevent Nether entry)

#Detect players near portals
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld unless block 11 38 -74 air if entity @s[x=-9,dx=20,y=38,dy=19,z=-74,dz=1] run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld unless block 13 38 -74 air if entity @s[x=13,dx=20,y=38,dy=19,z=-74,dz=1] run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld unless block 11 38 74 air if entity @s[x=-9,dx=20,y=38,dy=19,z=74,dz=1] run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld unless block 13 38 74 air if entity @s[x=13,dx=20,y=38,dy=19,z=74,dz=1] run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld if block ~ ~ ~ nether_portal run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld if block ~ ~ ~-0.5 nether_portal run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld if block ~ ~ ~0.5 nether_portal run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld if block ~0.5 ~ ~ nether_portal run tag @s add portalKill
execute as @a[x=0,gamemode=!spectator,team=!Developer] at @s in overworld if block ~-0.5 ~ ~ nether_portal run tag @s add portalKill

#Necessary effects/tags
execute as @a[x=0,tag=portalKill] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" went too close to a Nether Portal"}]
effect clear @a[x=0,tag=portalKill]
effect give @a[x=0,tag=portalKill] night_vision infinite 100 true
effect give @a[x=0,tag=portalKill] resistance 1 100 true
effect give @a[x=0,tag=portalKill] instant_health 1 100 true
effect give @a[x=0,tag=portalKill] fire_resistance 2 100 true
scoreboard players add @a[x=0,tag=portalKill] deaths 1
scoreboard players add @a[x=0,tag=portalKill] death 1
scoreboard players add @a[x=0,tag=portalKill] respawn 1
execute if entity @s[tag=GameEnd] run scoreboard players remove @a[x=0,tag=portalKill] deaths 1

#No fall damage
scoreboard players set @a[x=0,tag=portalKill] voidNoFallCount 0
effect give @a[x=0,scores={voidNoFallCount=0}] slow_falling 1 1 true
scoreboard players add @a[x=0,scores={voidNoFallCount=0..2}] voidNoFallCount 1
effect clear @a[x=0,scores={voidNoFallCount=2}] slow_falling
scoreboard players reset @a[x=0,scores={voidNoFallCount=2}] voidNoFallCount

#Teleport back to spawnpoint
execute unless entity @s[tag=customSpawns] run tp @a[x=0,team=Blue,tag=portalKill] 12 64 -66 0 0
execute unless entity @s[tag=customSpawns] run tp @a[x=0,team=Yellow,tag=portalKill] 12 64 66 -180 0
#In case somehow it's a Lobby player in a portal
execute as @a[x=0,team=!Blue,team=!Yellow,tag=portalKill] run kill @s
execute unless entity @s[tag=customSpawns] run tag @a[x=0,tag=portalKill] remove portalKill