#portals
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 11 38 -74 air if entity @s[x=-9,dx=20,y=38,dy=19,z=-74,dz=1] run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 13 38 -74 air if entity @s[x=13,dx=20,y=38,dy=19,z=-74,dz=1] run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 11 38 74 air if entity @s[x=-9,dx=20,y=38,dy=19,z=74,dz=1] run tag @s add portalKill
execute as @a[gamemode=!spectator,team=!Developer] at @s in overworld unless block 13 38 74 air if entity @s[x=13,dx=20,y=38,dy=19,z=74,dz=1] run tag @s add portalKill
execute as @a[team=Blue,tag=portalKill] run tellraw @a ["",{"selector":"@s"},{"text":" went too close to a Nether Portal"}]
execute as @a[team=Yellow,tag=portalKill] run tellraw @a ["",{"selector":"@s"},{"text":" went too close to a Nether Portal"}]
effect give @a[team=Blue,tag=portalKill] resistance 1 100 true
effect give @a[team=Yellow,tag=portalKill] resistance 1 100 true
effect give @a[team=Blue,tag=portalKill] instant_health 1 100 true
effect give @a[team=Yellow,tag=portalKill] instant_health 1 100 true
effect give @a[team=Blue,tag=portalKill] fire_resistance 2 100 true
effect give @a[team=Yellow,tag=portalKill] fire_resistance 2 100 true
scoreboard players add @a[team=Blue,tag=portalKill] deaths 1
scoreboard players add @a[team=Yellow,tag=portalKill] deaths 1
scoreboard players add @a[team=Blue,tag=portalKill] death 1
scoreboard players add @a[team=Yellow,tag=portalKill] death 1
scoreboard players add @a[team=Blue,tag=portalKill] respawn 1
scoreboard players add @a[team=Yellow,tag=portalKill] respawn 1
tag @a[team=Blue,tag=portalKill] remove SummonPlat
tag @a[team=Yellow,tag=portalKill] remove SummonPlat
#no fall damage
scoreboard players set @a[team=Blue,tag=portalKill] voidNoFallCount 0
scoreboard players set @a[team=Yellow,tag=portalKill] voidNoFallCount 0
effect give @a[scores={voidNoFallCount=0}] slow_falling 1 1 true
scoreboard players add @a[scores={voidNoFallCount=0..4}] voidNoFallCount 1
effect clear @a[scores={voidNoFallCount=5}] slow_falling
scoreboard players reset @a[scores={voidNoFallCount=5}] voidNoFallCount
tp @a[team=Blue,tag=portalKill] 12 64 -66 0 0
tp @a[team=Yellow,tag=portalKill] 12 64 66 -180 0
execute as @a[team=Blue,tag=portalKill,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[team=Yellow,tag=portalKill,predicate=custom:is_on_fire] at @s run function game:putoutfire
tag @a[team=Blue,tag=portalKill] remove portalKill
tag @a[team=Yellow,tag=portalKill] remove portalKill
execute as @a[team=!Blue,team=!Yellow,tag=portalKill] run kill @s
tag @a[team=!Blue,team=!Yellow,tag=portalKill] remove portalKill