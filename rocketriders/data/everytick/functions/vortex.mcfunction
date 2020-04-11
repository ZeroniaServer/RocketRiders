#VortexTag
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1] add YellowVortex
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1] add BlueVortex
scoreboard players reset @a ThrowVortex

#Vortex
execute as @e[tag=YellowVortex] at @s run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a
execute as @e[tag=BlueVortex] at @s run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a
execute as @e[tag=YellowVortex] at @s run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[tag=BlueVortex] at @s run particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a
scoreboard players add @e[tag=BlueVortex] vortextimer 1
scoreboard players add @e[tag=YellowVortex] vortextimer 1
execute as @e[tag=YellowVortex,scores={vortextimer=20..}] at @s run playsound minecraft:block.portal.ambient player @a ~ ~ ~ 2 2
execute as @e[tag=YellowVortex,scores={vortextimer=20..}] at @s run playsound minecraft:entity.shulker.teleport player @a ~ ~ ~ 2 0.8
execute as @e[tag=BlueVortex,scores={vortextimer=20..}] at @s run playsound minecraft:block.portal.ambient player @a ~ ~ ~ 2 2
execute as @e[tag=BlueVortex,scores={vortextimer=20..}] at @s run playsound minecraft:entity.shulker.teleport player @a ~ ~ ~ 2 0.8
execute as @e[tag=YellowVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["Vortex","VortexItemYellow"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}
execute as @e[tag=BlueVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["Vortex","VortexItemBlue"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}
execute as @e[tag=YellowVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexYellow"],Duration:2000000000}
execute as @e[tag=BlueVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexBlue"],Duration:2000000000}
kill @e[scores={vortextimer=20..}]
execute as @e[tag=VortexYellow] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexYellow] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexBlue] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 5 force @a
execute as @e[tag=VortexBlue] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a

#spin around (unprimed)
execute as @e[tag=VortexItemBlue] at @s unless entity @a[team=Yellow,distance=..6] unless score @e[tag=VortexBlue,sort=nearest,limit=1,distance=..3] vortexBoom matches 1.. run tp @s ~ ~ ~ ~15 ~

execute as @e[tag=VortexItemYellow] at @s unless entity @a[team=Blue,distance=..6] unless score @e[tag=VortexYellow,sort=nearest,limit=1,distance=..3] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-15 ~

#spin around (primed)
execute as @e[tag=VortexItemBlue] at @s unless entity @a[team=Yellow,distance=..6] if score @e[tag=VortexBlue,sort=nearest,limit=1,distance=..3] vortexBoom matches 1.. run tp @s ~ ~ ~ ~30 ~

execute as @e[tag=VortexItemYellow] at @s unless entity @a[team=Blue,distance=..6] if score @e[tag=VortexYellow,sort=nearest,limit=1,distance=..3] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-30 ~

#face player
execute as @e[tag=VortexItemBlue] at @s if entity @e[tag=VortexBlue,sort=nearest,limit=1,distance=..2] if entity @a[team=Yellow,distance=..6] run tp @s ~ ~ ~ facing entity @p[team=Yellow,distance=..6]
execute as @e[tag=VortexItemYellow] at @s if entity @e[tag=VortexYellow,sort=nearest,limit=1,distance=..2] if entity @a[team=Blue,distance=..6] run tp @s ~ ~ ~ facing entity @p[team=Blue,distance=..6]


#target
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s if entity @a[team=Yellow,distance=..6] run tp @s ^ ^ ^.05 facing entity @p[team=Yellow,distance=..6]
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s if entity @a[team=Yellow,distance=..6] run tp @e[tag=VortexItemBlue,distance=..3,limit=1,sort=nearest] @s
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s if entity @a[team=Yellow,distance=..6] run tp @e[tag=VortexItemBlue,distance=..3,limit=1,sort=nearest] ~ ~-2 ~


execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s if entity @a[team=Blue,distance=..6] run tp @s ^ ^ ^.05 facing entity @p[team=Blue,distance=..6]
execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s if entity @a[team=Blue,distance=..6] run tp @e[tag=VortexItemYellow,distance=..3,limit=1,sort=nearest] @s
execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s if entity @a[team=Blue,distance=..6] run tp @e[tag=VortexItemYellow,distance=..3,limit=1,sort=nearest] ~ ~-2 ~

execute as @a[team=Blue] at @s run scoreboard players add @e[tag=VortexYellow,distance=..3] vortexBoom 1
execute as @a[team=Yellow] at @s run scoreboard players add @e[tag=VortexBlue,distance=..3] vortexBoom 1
execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s run data merge entity @e[tag=VortexItemYellow,sort=nearest,limit=1] {Tags:["Vortex","VortexItemYellow"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s run data merge entity @e[tag=VortexItemBlue,sort=nearest,limit=1] {Tags:["Vortex","VortexItemBlue"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[scores={vortexBoom=1..1}] at @s run playsound entity.shulker.hurt_closed player @a ~ ~ ~ 1 0
scoreboard players set @e[scores={vortexBoom=1..1}] vortexBoom 2
execute as @e[tag=VortexBlue] at @s unless block ~ ~ ~ air unless block ~ ~ ~ nether_portal run scoreboard players set @s vortexBoom 10
execute as @e[tag=VortexYellow] at @s unless block ~ ~ ~ air unless block ~ ~ ~ nether_portal run scoreboard players set @s vortexBoom 10
execute as @e[type=arrow] at @s run scoreboard players set @e[tag=VortexBlue,distance=..2] vortexBoom 10
execute as @e[type=arrow] at @s run scoreboard players set @e[tag=VortexYellow,distance=..2] vortexBoom 10
execute as @e[type=tnt] at @s run scoreboard players set @e[tag=VortexBlue,distance=..5] vortexBoom 10
execute as @e[type=tnt] at @s run scoreboard players set @e[tag=VortexYellow,distance=..5] vortexBoom 10
execute as @e[scores={vortexBoom=10..}] at @s run scoreboard players set @e[tag=VortexBlue,distance=..6] vortexBoom 10
execute as @e[scores={vortexBoom=10..}] at @s run scoreboard players set @e[tag=VortexYellow,distance=..6] vortexBoom 10
execute as @e[tag=VortexItemYellow] at @s unless entity @e[tag=VortexYellow,distance=..2,limit=1,sort=nearest] run kill @s
execute as @e[tag=VortexItemBlue] at @s unless entity @e[tag=VortexBlue,distance=..2,limit=1,sort=nearest] run kill @s
execute as @e[scores={vortexBoom=10..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Vortex\"}",ExplosionRadius:3,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["BlueAnt"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @e[scores={vortexBoom=10..}] at @s run kill @s

#Feathered vortex (lmao)
execute as @e[type=chicken] at @s run tag @s add SummonFeathered
execute as @e[tag=SummonFeathered] at @s run playsound entity.chicken.hurt player @a ~ ~ ~ 2 0
execute as @e[tag=SummonFeathered] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-2 ~ {CustomName:"{\"text\":\"a Vortex\"}",Tags:["Vortex","VortexItemFeathered"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"5afc469d-e748-4932-b5db-6fc9e013f608",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE2YjhlOTgzODljNTQxYmIzNjQ1Mzg1MGJjYmQxZjdiYzVhNTdkYTYyZGNjNTA1MDYwNDA5NzM3ZWM1YjcyYSJ9fX0="}]}}}}]}
execute as @e[tag=SummonFeathered] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexFeathered"],Duration:2000000000}
execute as @e[tag=VortexFeathered] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0 0 10 force @a
execute as @e[tag=VortexItemFeathered] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=VortexFeathered] at @s if entity @a[distance=..3] run advancement grant @a[distance=..3] only custom:bronzeachievements/huh
execute as @e[tag=VortexFeathered] at @s if entity @a[distance=..3] run summon creeper ~ ~ ~ {Fuse:0,CustomName:"{\"text\":\"a... Feathery Vortex?\"}"}
execute as @e[tag=VortexFeathered] at @s if entity @a[distance=..3] run kill @e[tag=VortexItemFeathered,distance=..3,limit=1]
execute as @e[tag=VortexFeathered] at @s if entity @a[distance=..3] run kill @e[tag=VortexFeathered,distance=..3,limit=1]
execute as @e[tag=SummonFeathered] at @s run tp @s ~ ~-250 ~
kill @e[tag=SummonFeathered]