#########################################
## VORTEX: A spinning midair minefield ##
## Explodes upon contact with players, ##
## projectiles, blocks, or explosions  ##
#########################################

##Identify egg as a Vortex
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=!YellowVortex,tag=!BlueVortex] add YellowVortex
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=!YellowVortex,tag=!BlueVortex] add BlueVortex
scoreboard players reset @a ThrowVortex

##Vortex deployment (both teams)
execute as @e[tag=YellowVortex,type=egg] at @s run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a
execute as @e[tag=BlueVortex,type=egg] at @s run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a
execute as @s[tag=!custVortParticle] as @e[tag=YellowVortex,type=egg] at @s run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @s[tag=!custVortParticle] as @e[tag=BlueVortex,type=egg] at @s run particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a
scoreboard players add @e[tag=BlueVortex,type=egg] vortextimer 1
scoreboard players add @e[tag=YellowVortex,type=egg] vortextimer 1
#Next two commands disable Vortex near own portals
execute unless entity @s[tag=noPortal] as @e[tag=BlueVortex,type=egg,scores={vortextimer=19..20}] at @s if entity @s[x=-12,y=36,z=-80,dx=48,dy=28,dz=12] run scoreboard players remove @s vortextimer 1
execute unless entity @s[tag=noPortal] as @e[tag=YellowVortex,type=egg,scores={vortextimer=19..20}] at @s if entity @s[x=-12,y=36,z=68,dx=48,dy=28,dz=12] run scoreboard players remove @s vortextimer 1
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:block.portal.ambient player @a ~ ~ ~ 2 2
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:entity.shulker.teleport player @a ~ ~ ~ 2 0.8
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:block.portal.ambient player @a ~ ~ ~ 2 2
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:entity.shulker.teleport player @a ~ ~ ~ 2 0.8
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexYellow"],Duration:2000000000}
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexBlue"],Duration:2000000000}
#Track Vortex with IDs and summon armor stands recursively - thanks iRobo for the algorithm!
scoreboard players add @e[tag=Vortex,type=area_effect_cloud] VortexID 0
execute as @e[tag=Vortex,tag=!VortexFeathered,scores={VortexID=0},type=area_effect_cloud] at @s run function everytick:vortexid
kill @e[scores={vortextimer=20..},type=egg]
execute as @e[tag=VortexYellow,type=area_effect_cloud] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @s[tag=!custVortParticle] as @e[tag=VortexYellow,type=area_effect_cloud] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexBlue,type=area_effect_cloud] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 5 force @a
execute as @s[tag=!custVortParticle] as @e[tag=VortexBlue,type=area_effect_cloud] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
scoreboard players add @e[tag=Vortex,type=area_effect_cloud] vortexBoom 0

##Spin around (unprimed0)
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s unless entity @a[team=Yellow,distance=..7] unless score @e[tag=VortexBlue,sort=nearest,limit=1,distance=..2,type=area_effect_cloud] vortexBoom matches 1.. run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s unless entity @a[team=Blue,distance=..7] unless score @e[tag=VortexYellow,sort=nearest,limit=1,distance=..2,type=area_effect_cloud] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-15 ~

##Spin around (primed)
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s unless entity @a[team=Yellow,distance=..7] if score @e[tag=VortexBlue,sort=nearest,limit=1,distance=..2,type=area_effect_cloud] vortexBoom matches 1.. run tp @s ~ ~ ~ ~30 ~
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s unless entity @a[team=Blue,distance=..7] if score @e[tag=VortexYellow,sort=nearest,limit=1,distance=..2,type=area_effect_cloud] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-30 ~

##Drift towards enemy player in close contact
execute as @e[tag=VortexBlue,scores={vortexBoom=1..},type=area_effect_cloud] at @s if entity @a[team=Yellow,distance=..7] run tp @s ^ ^ ^.125 facing entity @p[team=Yellow,distance=..7]
execute as @e[tag=VortexYellow,scores={vortexBoom=1..},type=area_effect_cloud] at @s if entity @a[team=Blue,distance=..7] run tp @s ^ ^ ^.125 facing entity @p[team=Blue,distance=..7]

#Teleport item to drifting Vortex recursively - thanks iRobo for the algorithm!
scoreboard players set $count VortexID 1
execute if entity @e[tag=Vortex,scores={vortexBoom=1..},type=area_effect_cloud] run function everytick:vortextp

##Face enemy player
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s if entity @e[tag=VortexBlue,sort=nearest,limit=1,distance=..2,type=area_effect_cloud] if entity @a[team=Yellow,distance=..8] run tp @s ~ ~ ~ facing entity @p[team=Yellow,distance=..8]
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s if entity @e[tag=VortexYellow,sort=nearest,limit=1,distance=..2,type=area_effect_cloud] if entity @a[team=Blue,distance=..8] run tp @s ~ ~ ~ facing entity @p[team=Blue,distance=..8]

##Other explosion conditions
execute as @a[team=Blue] at @s run scoreboard players add @e[tag=VortexYellow,distance=..5,type=area_effect_cloud] vortexBoom 1
execute as @a[team=Yellow] at @s run scoreboard players add @e[tag=VortexBlue,distance=..5,type=area_effect_cloud] vortexBoom 1
execute as @e[tag=VortexYellow,scores={vortexBoom=1..},type=area_effect_cloud] at @s run data merge entity @e[tag=VortexItemYellow,sort=nearest,limit=1,type=armor_stand] {Tags:["VortexItem","VortexItemYellow"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[tag=VortexBlue,scores={vortexBoom=1..},type=area_effect_cloud] at @s run data merge entity @e[tag=VortexItemBlue,sort=nearest,limit=1,type=armor_stand] {Tags:["VortexItem","VortexItemBlue"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[scores={vortexBoom=1},type=area_effect_cloud] at @s run playsound entity.shulker.hurt_closed player @a ~ ~ ~ 1 0
tag @e[tag=Vortex,scores={vortexBoom=1},type=area_effect_cloud] add origin
scoreboard players set @e[tag=Vortex,scores={vortexBoom=1},type=area_effect_cloud] vortexBoom 2
execute as @e[tag=Vortex,type=area_effect_cloud] at @s unless block ~ ~ ~ air unless block ~ ~ ~ nether_portal run tag @s add originboom
execute as @e[type=arrow] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=area_effect_cloud] add originboom
execute as @e[type=tnt] at @s run tag @e[tag=Vortex,distance=..5,limit=1,type=area_effect_cloud] add originboom
execute as @e[type=firework_rocket,tag=BlueNova] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=area_effect_cloud] add originboom
execute as @e[type=armor_stand,tag=bluenovatracker] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=area_effect_cloud] add originboom
execute as @e[type=firework_rocket,tag=YellowNova] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=area_effect_cloud] add originboom
execute as @e[type=armor_stand,tag=yellownovatracker] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=area_effect_cloud] add originboom
tag @e[tag=Vortex,type=area_effect_cloud,tag=originboom] add origin
scoreboard players set @e[tag=Vortex,type=area_effect_cloud,tag=originboom] vortexBoom 10
tag @e[tag=Vortex,type=area_effect_cloud,tag=originboom] remove originboom

##Kill stray item display entities
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s unless entity @e[tag=VortexYellow,distance=..3,limit=1,sort=nearest,type=area_effect_cloud] run kill @s
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s unless entity @e[tag=VortexBlue,distance=..3,limit=1,sort=nearest,type=area_effect_cloud] run kill @s

##Feathered vortex (Easter egg)
execute unless entity @s[tag=featheredOff] as @e[type=chicken] unless entity @s[nbt={Age:0}] at @s run tag @s add SummonFeathered
execute as @e[tag=SummonFeathered,type=chicken] at @s run playsound entity.chicken.hurt player @a ~ ~ ~ 2 0
execute as @e[tag=SummonFeathered,type=chicken] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-1 ~ {Tags:["VortexItem","VortexItemFeathered"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:MHF_Chicken}}]}
execute as @e[tag=SummonFeathered,type=chicken] at @s align xyz positioned ~.5 ~ ~.5 run summon area_effect_cloud ~ ~ ~ {Tags:["Vortex","VortexFeathered"],Duration:2000000000}
execute as @e[type=chicken] run data merge entity @s {DeathTime:19s}
execute as @e[type=chicken] at @s run tp @s ~ ~-250 ~
kill @e[type=chicken]
execute as @e[tag=VortexFeathered,type=area_effect_cloud] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0 0 10 force @a
execute as @e[tag=VortexItemFeathered,type=armor_stand] at @s run tp @s ~ ~ ~ ~15 ~
execute as @s[scores={servermode=0}] as @e[tag=VortexFeathered,type=area_effect_cloud] at @s as @a[team=!Spectator,distance=..3] run advancement grant @s only achievements:rr_challenges/huh
execute as @e[tag=VortexFeathered,type=area_effect_cloud] at @s if entity @a[team=!Spectator,distance=..3] run tag @s add origin
execute as @e[tag=VortexItemFeathered,type=armor_stand] at @s unless entity @e[tag=VortexFeathered,distance=..2,limit=1,sort=nearest,type=area_effect_cloud] run kill @s

##Vortex chaining/explosion (incorporates delay)
execute as @e[tag=origin,scores={vortexBoom=3..},type=area_effect_cloud] at @s run function everytick:vortex_chain
scoreboard players set @e[tag=origin,scores={vortexBoom=0},type=area_effect_cloud] vortexBoom 10
scoreboard players add @e[tag=chained,type=area_effect_cloud] vortexChain 1
execute as @e[tag=chained,scores={vortexChain=4..},type=area_effect_cloud] at @s run function everytick:vortex_chain
execute if entity @s[tag=!Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Vortex\"}",ExplosionRadius:3,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Vortex\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive] as @e[scores={vortexBoom=10},tag=VortexFeathered,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:3,CustomName:"{\"text\":\"a... Feathery Vortex?\"}",Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[scores={vortexBoom=10},tag=VortexFeathered,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:5,CustomName:"{\"text\":\"a... Feathery Vortex?\"}",Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[scores={vortexBoom=10},type=area_effect_cloud] at @s run kill @e[type=arrow,distance=..2,limit=1,sort=nearest]
execute as @e[scores={vortexBoom=10},type=area_effect_cloud] at @s run kill @e[type=firework_rocket,tag=BlueNova,distance=..2,limit=1,sort=nearest]
execute as @e[scores={vortexBoom=10},type=area_effect_cloud] at @s run kill @e[type=firework_rocket,tag=YellowNova,distance=..2,limit=1,sort=nearest]
execute as @e[scores={vortexBoom=10},type=area_effect_cloud] at @s run kill @s