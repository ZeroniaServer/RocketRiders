#VortexTag
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..3,tag=!YellowVortex,tag=!BlueVortex] add YellowVortex
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..3,tag=!YellowVortex,tag=!BlueVortex] add BlueVortex
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
execute as @e[tag=YellowVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["VortexItem","VortexItemYellow"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}
execute as @e[tag=BlueVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["VortexItem","VortexItemBlue"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}
execute as @e[tag=YellowVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexYellow"],Duration:2000000000}
execute as @e[tag=BlueVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexBlue"],Duration:2000000000}
kill @e[scores={vortextimer=20..}]
execute as @e[tag=VortexYellow] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexYellow] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexBlue] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 5 force @a
execute as @e[tag=VortexBlue] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
scoreboard players add @e[tag=Vortex] vortexBoom 0

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
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s if entity @a[team=Yellow,distance=..6] run tp @s ^ ^ ^.1 facing entity @p[team=Yellow,distance=..7]
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s if entity @a[team=Yellow,distance=..6] run tp @e[tag=VortexItemBlue,distance=..3,limit=1,sort=nearest] @s
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s if entity @a[team=Yellow,distance=..6] run tp @e[tag=VortexItemBlue,distance=..3,limit=1,sort=nearest] ~ ~-2 ~

execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s if entity @a[team=Blue,distance=..6] run tp @s ^ ^ ^.1 facing entity @p[team=Blue,distance=..7]
execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s if entity @a[team=Blue,distance=..6] run tp @e[tag=VortexItemYellow,distance=..3,limit=1,sort=nearest] @s
execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s if entity @a[team=Blue,distance=..6] run tp @e[tag=VortexItemYellow,distance=..3,limit=1,sort=nearest] ~ ~-2 ~

execute as @a[team=Blue] at @s run scoreboard players add @e[tag=VortexYellow,distance=..3] vortexBoom 1
execute as @a[team=Yellow] at @s run scoreboard players add @e[tag=VortexBlue,distance=..3] vortexBoom 1
execute as @e[tag=VortexYellow,scores={vortexBoom=1..}] at @s run data merge entity @e[tag=VortexItemYellow,sort=nearest,limit=1] {Tags:["VortexItem","VortexItemYellow"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[tag=VortexBlue,scores={vortexBoom=1..}] at @s run data merge entity @e[tag=VortexItemBlue,sort=nearest,limit=1] {Tags:["VortexItem","VortexItemBlue"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[scores={vortexBoom=1}] at @s run playsound entity.shulker.hurt_closed player @a ~ ~ ~ 1 0
tag @e[tag=Vortex,scores={vortexBoom=1}] add origin
scoreboard players set @e[tag=Vortex,scores={vortexBoom=1}] vortexBoom 2
execute as @e[tag=Vortex] at @s unless block ~ ~ ~ air unless block ~ ~ ~ nether_portal run tag @s add origin
execute as @e[type=arrow] at @s run tag @e[tag=Vortex,distance=..2,limit=1] add origin
execute as @e[type=tnt] at @s run tag @e[tag=Vortex,distance=..5,limit=1] add origin
execute as @e[tag=VortexItemYellow] at @s unless entity @e[tag=VortexYellow,distance=..2,limit=1,sort=nearest] run kill @s
execute as @e[tag=VortexItemBlue] at @s unless entity @e[tag=VortexBlue,distance=..2,limit=1,sort=nearest] run kill @s

#Feathered vortex (lmao)
execute unless entity @s[tag=featheredOff] as @e[type=chicken] unless entity @s[nbt={Age:0}] at @s run tag @s add SummonFeathered
execute as @e[tag=SummonFeathered] at @s run playsound entity.chicken.hurt player @a ~ ~ ~ 2 0
execute as @e[tag=SummonFeathered] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-1 ~ {CustomName:"{\"text\":\"a Chicken Vortex\"}",Tags:["VortexItem","VortexItemFeathered"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:MHF_Chicken}}]}
execute as @e[tag=SummonFeathered] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexFeathered"],Duration:2000000000}
execute as @e[tag=SummonFeathered] at @s run tp @s ~ ~-250 ~
kill @e[tag=SummonFeathered]
execute as @e[tag=VortexFeathered] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0 0 10 force @a
execute as @e[tag=VortexItemFeathered] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=VortexFeathered] at @s as @a[team=!Spectator,distance=..3] run advancement grant @s only achievements:rr_challenges/huh
execute as @e[tag=VortexFeathered] at @s if entity @a[team=!Spectator,distance=..3] run tag @s add origin
execute as @e[tag=VortexItemFeathered] at @s unless entity @e[tag=VortexFeathered,distance=..2,limit=1,sort=nearest] run kill @s

#Vortex chaining/explosion
execute as @e[tag=origin] at @s run function everytick:vortex_chain
scoreboard players set @e[tag=origin,scores={vortexBoom=0}] vortexBoom 10
scoreboard players add @e[tag=chained] vortexChain 1
execute as @e[tag=chained,scores={vortexChain=4..}] at @s run function everytick:vortex_chain
execute if entity @s[tag=!Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Vortex\"}",ExplosionRadius:3,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Vortex\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive] as @e[scores={vortexBoom=10},tag=VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:3,CustomName:"{\"text\":\"a... Feathery Vortex?\"}",Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[scores={vortexBoom=10},tag=VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:5,CustomName:"{\"text\":\"a... Feathery Vortex?\"}",Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[scores={vortexBoom=10}] at @s run kill @e[type=arrow,distance=..2,limit=1,sort=nearest]
execute as @e[scores={vortexBoom=10}] at @s run kill @s