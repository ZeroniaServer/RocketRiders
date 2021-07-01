#########################################
## VORTEX: A spinning midair minefield ##
## Explodes upon contact with players, ##
## projectiles, blocks, or explosions  ##
#########################################

##Store vortex user UUID's into their UUIDTracker score
execute as @a[scores={ThrowVortex=1..}] store result score @s UUIDTracker run data get entity @s UUID[0]

##Identify egg as a Vortex & apply custom name to the egg
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run setblock ~ 174 ~ oak_sign
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run setblock ~ 174 ~ oak_sign
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Yellow,scores={ThrowVortex=1..}]"},{"text":"\'s Vortex"}]'}
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run data merge block ~ 174 ~ {Text1:'{"text":""}',Text2:'["",{"selector":"@p[team=Blue,scores={ThrowVortex=1..}]"},{"text":"\'s Vortex"}]'}
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=!YellowVortex,tag=!BlueVortex] add YellowVortex
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s store result score @e[tag=YellowVortex,limit=1,distance=..3,sort=nearest] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run data modify entity @e[tag=YellowVortex,limit=1,sort=nearest,distance=..5] CustomName set from block ~ 174 ~ Text2
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=!YellowVortex,tag=!BlueVortex] add BlueVortex
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s store result score @e[tag=BlueVortex,limit=1,distance=..3,sort=nearest] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run data modify entity @e[tag=BlueVortex,limit=1,sort=nearest,distance=..5] CustomName set from block ~ 174 ~ Text2
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run fill ~ 173 ~ ~ 175 ~ air replace oak_sign
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
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 2.2 0.8
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 2 0.8
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 2.2 0.8
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s run playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 2 0.8
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["Vortex","VortexYellow"]}
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 run data modify entity @e[tag=VortexYellow,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[tag=YellowVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 store result score @e[tag=VortexYellow,limit=1,sort=nearest,distance=..5] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["Vortex","VortexBlue"]}
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 run data modify entity @e[tag=VortexBlue,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[tag=BlueVortex,scores={vortextimer=20..},type=egg] at @s align xyz positioned ~.5 ~ ~.5 store result score @e[tag=VortexBlue,limit=1,sort=nearest,distance=..5] UUIDTracker run scoreboard players get @s UUIDTracker
#Track Vortex with IDs and summon armor stands recursively - thanks iRobo for the algorithm!
scoreboard players add @e[tag=Vortex,type=marker] VortexID 0
execute as @e[tag=Vortex,tag=!VortexFeathered,scores={VortexID=0},type=marker] at @s run function everytick:vortexid
kill @e[scores={vortextimer=20..},type=egg]
execute as @s[tag=!custVortParticle] as @e[tag=VortexYellow,type=marker] at @s run particle minecraft:wax_on ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexYellow,type=marker] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 5 force @a
execute as @s[tag=!custVortParticle] as @e[tag=VortexYellow,type=marker] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0 0 2 force @a
execute as @s[tag=!custVortParticle] as @e[tag=VortexBlue,type=marker] at @s run particle minecraft:scrape ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexBlue,type=marker] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 5 force @a
execute as @s[tag=!custVortParticle] as @e[tag=VortexBlue,type=marker] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0 0 2 force @a
scoreboard players add @e[tag=Vortex,type=marker] vortexBoom 0

##Spin around (unprimed)
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s unless entity @a[team=Yellow,gamemode=!spectator,distance=..4] unless score @e[tag=VortexBlue,sort=nearest,limit=1,distance=..2,type=marker] vortexBoom matches 1.. run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s unless entity @a[team=Blue,gamemode=!spectator,distance=..4] unless score @e[tag=VortexYellow,sort=nearest,limit=1,distance=..2,type=marker] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-15 ~

##Spin around (primed)
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s unless entity @a[team=Yellow,gamemode=!spectator,distance=..4] if score @e[tag=VortexBlue,sort=nearest,limit=1,distance=..2,type=marker] vortexBoom matches 1.. run tp @s ~ ~ ~ ~30 ~
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s unless entity @a[team=Blue,gamemode=!spectator,distance=..4] if score @e[tag=VortexYellow,sort=nearest,limit=1,distance=..2,type=marker] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-30 ~

##Drift towards enemy player in close contact
execute as @e[tag=VortexBlue,scores={vortexBoom=1..},type=marker] at @s if entity @a[team=Yellow,gamemode=!spectator,distance=..4] run tp @s ^ ^ ^.1 facing entity @p[team=Yellow,gamemode=!spectator,distance=..4]
execute as @e[tag=VortexYellow,scores={vortexBoom=1..},type=marker] at @s if entity @a[team=Blue,gamemode=!spectator,distance=..4] run tp @s ^ ^ ^.1 facing entity @p[team=Blue,gamemode=!spectator,distance=..4]

#Teleport item to drifting Vortex recursively - thanks iRobo for the algorithm!
scoreboard players set $count VortexID 1
execute if entity @e[tag=Vortex,scores={vortexBoom=1..},type=marker] run function everytick:vortextp

##Face enemy player
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s if entity @e[tag=VortexBlue,sort=nearest,limit=1,distance=..2,type=marker] if entity @a[team=Yellow,gamemode=!spectator,distance=..4] run tp @s ~ ~ ~ facing entity @p[team=Yellow,gamemode=!spectator,distance=..4]
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s if entity @e[tag=VortexYellow,sort=nearest,limit=1,distance=..2,type=marker] if entity @a[team=Blue,gamemode=!spectator,distance=..4] run tp @s ~ ~ ~ facing entity @p[team=Blue,gamemode=!spectator,distance=..4]

##Other explosion conditions
execute as @a[team=Blue,gamemode=!spectator] at @s run scoreboard players add @e[tag=VortexYellow,distance=..4,type=marker,scores={vortexBoom=0}] vortexBoom 1
execute as @a[team=Blue,gamemode=!spectator] at @s run scoreboard players add @e[tag=VortexYellow,distance=..2,type=marker,scores={vortexBoom=1..}] vortexBoom 1
execute as @a[team=Yellow,gamemode=!spectator] at @s run scoreboard players add @e[tag=VortexBlue,distance=..4,type=marker,scores={vortexBoom=0}] vortexBoom 1
execute as @a[team=Yellow,gamemode=!spectator] at @s run scoreboard players add @e[tag=VortexBlue,distance=..2,type=marker,scores={vortexBoom=1..}] vortexBoom 1
execute as @e[scores={vortexBoom=1},type=marker] at @s run playsound entity.shulker.hurt_closed master @a ~ ~ ~ 0.7 0
execute as @e[scores={vortexBoom=1},type=marker] at @s run playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 1 1
tag @e[tag=Vortex,scores={vortexBoom=1},type=marker] add origin
scoreboard players set @e[tag=Vortex,scores={vortexBoom=1},type=marker] vortexBoom 2
execute as @e[tag=Vortex,type=marker] at @s unless block ~ ~ ~ air unless block ~ ~ ~ nether_portal run tag @s add originboom
execute as @e[type=arrow] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=marker] add originboom
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run tag @e[tag=Vortex,distance=..5,limit=1,type=marker] add originboom
execute as @e[type=firework_rocket,tag=BlueNova] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=marker] add originboom
execute as @e[type=armor_stand,tag=bluenovatracker] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=marker] add originboom
execute as @e[type=firework_rocket,tag=YellowNova] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=marker] add originboom
execute as @e[type=armor_stand,tag=yellownovatracker] at @s run tag @e[tag=Vortex,distance=..2,limit=1,type=marker] add originboom
tag @e[tag=Vortex,type=marker,tag=originboom] add origin
scoreboard players set @e[tag=Vortex,type=marker,tag=originboom,scores={vortexBoom=..9}] vortexBoom 10
tag @e[tag=Vortex,type=marker,tag=originboom] remove originboom

##Kill stray item display entities
execute as @e[tag=VortexItemYellow,type=armor_stand] at @s unless entity @e[tag=VortexYellow,distance=..3,limit=1,sort=nearest,type=marker] run kill @s
execute as @e[tag=VortexItemBlue,type=armor_stand] at @s unless entity @e[tag=VortexBlue,distance=..3,limit=1,sort=nearest,type=marker] run kill @s

##Feathered vortex (Easter egg)
execute unless entity @s[tag=featheredOff] as @e[type=chicken] unless entity @s[nbt={Age:0}] at @s run tag @s add SummonFeathered
execute as @e[tag=SummonFeathered,type=chicken] at @s run playsound entity.chicken.hurt master @a ~ ~ ~ 2 0
execute as @e[tag=SummonFeathered,type=chicken] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-1 ~ {Tags:["VortexItem","VortexItemFeathered"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:MHF_Chicken}}]}
execute as @e[tag=SummonFeathered,type=chicken] at @s align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["Vortex","VortexFeathered"]}
execute as @e[type=chicken] run data merge entity @s {DeathTime:19s}
execute as @e[type=chicken] at @s run tp @s ~ ~-250 ~
kill @e[type=chicken]
execute as @e[tag=VortexFeathered,type=marker] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0 0 10 force @a
execute as @e[tag=VortexItemFeathered,type=armor_stand] at @s run tp @s ~ ~ ~ ~15 ~
execute as @s[scores={servermode=0}] as @e[tag=VortexFeathered,type=marker] at @s as @a[team=!Spectator,distance=..3] run advancement grant @s only achievements:rr_challenges/huh
execute as @e[tag=VortexFeathered,type=marker] at @s if entity @a[team=!Spectator,distance=..3] run tag @s add origin
execute as @e[tag=VortexItemFeathered,type=armor_stand] at @s unless entity @e[tag=VortexFeathered,distance=..2,limit=1,sort=nearest,type=marker] run kill @s

##Vortex chaining/explosion (incorporates delay)
execute as @e[tag=origin,scores={vortexBoom=3..},type=marker] at @s run function everytick:vortex_chain
scoreboard players set @e[tag=origin,scores={vortexBoom=0},type=marker] vortexBoom 10
scoreboard players add @e[tag=chained,type=marker] vortexChain 1
execute as @e[tag=chained,scores={vortexChain=4..},type=marker] at @s run function everytick:vortex_chain
execute as @e[scores={vortexBoom=10..},tag=!VortexFeathered,type=marker] at @s run tag @a[team=!Spectator,team=!Lobby,distance=..10] add UtilKilled
execute as @e[scores={vortexBoom=10..},tag=!VortexFeathered,type=marker] at @s store result score @a[tag=UtilKilled,distance=..10] KillerUUID run scoreboard players get @s UUIDTracker
execute if entity @s[tag=!Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered,type=marker] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Vortex"}',ExplosionRadius:3,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered,type=marker] at @s run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute if entity @s[tag=Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered,type=marker] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Vortex"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[scores={vortexBoom=10},tag=!VortexFeathered,type=marker] at @s run data modify entity @e[type=creeper,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[scores={vortexBoom=10..},tag=!VortexFeathered,type=marker] at @s run tag @e[type=tnt,distance=..6] add UtilKilled
execute as @e[scores={vortexBoom=10..},tag=!VortexFeathered,type=marker] at @s store result score @e[tag=UtilKilled,type=tnt,distance=..6] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[scores={vortexBoom=10..},tag=!VortexFeathered,type=marker] at @s run function game:nametnt

execute if entity @s[tag=!Explosive] as @e[scores={vortexBoom=10},tag=VortexFeathered,type=marker] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:3,CustomName:'{"text":"a... Feathery Vortex?"}',Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[scores={vortexBoom=10},tag=VortexFeathered,type=marker] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:5,CustomName:'{"text":"a... Feathery Vortex?"}',Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[scores={vortexBoom=10},type=marker] at @s run kill @e[type=arrow,distance=..2,limit=1,sort=nearest]
execute as @e[scores={vortexBoom=10},type=marker] at @s run kill @e[type=firework_rocket,tag=BlueNova,distance=..2,limit=1,sort=nearest]
execute as @e[scores={vortexBoom=10},type=marker] at @s run kill @e[type=firework_rocket,tag=YellowNova,distance=..2,limit=1,sort=nearest]
execute as @e[scores={vortexBoom=14..},type=marker] at @s run kill @s

scoreboard players add @e[scores={vortexBoom=10..},type=marker] vortexBoom 1