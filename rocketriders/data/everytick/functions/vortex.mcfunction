#########################################
## VORTEX: A spinning midair minefield ##
## Explodes upon contact with players, ##
## projectiles, blocks, or explosions  ##
#########################################

##Identify egg as a Vortex & apply custom name to the egg
execute as @e[predicate=custom:indimension,type=egg] unless data entity @s {Item:{tag:{CustomModelData:3}}} run function everytick:vortex_owner

##Vortex deployment (both teams)
execute as @e[predicate=custom:indimension,type=egg,tag=YellowVortex] at @s if score $dust CmdData matches 1 run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=egg,tag=BlueVortex] at @s if score $dust CmdData matches 1 run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=!custVortParticle] as @e[predicate=custom:indimension,type=egg,tag=YellowVortex] at @s if score $dust CmdData matches 1 run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=!custVortParticle] as @e[predicate=custom:indimension,type=egg,tag=BlueVortex] at @s if score $dust CmdData matches 1 run particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
scoreboard players add @e[predicate=custom:indimension,type=egg,tag=BlueVortex] vortextimer 1
scoreboard players add @e[predicate=custom:indimension,type=egg,tag=YellowVortex] vortextimer 1
#Next two commands disable Vortex near own portals
execute unless entity @s[tag=noPortal] as @e[predicate=custom:indimension,type=egg,tag=BlueVortex,scores={vortextimer=19..20}] at @s if entity @s[x=-12,y=36,z=-80,dx=48,dy=28,dz=12] run scoreboard players remove @s vortextimer 1
execute unless entity @s[tag=noPortal] as @e[predicate=custom:indimension,type=egg,tag=YellowVortex,scores={vortextimer=19..20}] at @s if entity @s[x=-12,y=36,z=68,dx=48,dy=28,dz=12] run scoreboard players remove @s vortextimer 1
execute as @e[predicate=custom:indimension,type=egg,tag=YellowVortex,scores={vortextimer=20..}] at @s run playsound minecraft:block.sculk_sensor.clicking master @a[predicate=custom:indimension] ~ ~ ~ 2.2 0.8
execute as @e[predicate=custom:indimension,type=egg,tag=YellowVortex,scores={vortextimer=20..}] at @s run playsound minecraft:entity.shulker.teleport master @a[predicate=custom:indimension] ~ ~ ~ 2 0.8
execute as @e[predicate=custom:indimension,type=egg,tag=BlueVortex,scores={vortextimer=20..}] at @s run playsound minecraft:block.sculk_sensor.clicking master @a[predicate=custom:indimension] ~ ~ ~ 2.2 0.8
execute as @e[predicate=custom:indimension,type=egg,tag=BlueVortex,scores={vortextimer=20..}] at @s run playsound minecraft:entity.shulker.teleport master @a[predicate=custom:indimension] ~ ~ ~ 2 0.8
execute as @e[predicate=custom:indimension,type=egg,tag=YellowVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["Vortex","VortexYellow"]}
execute as @e[predicate=custom:indimension,type=egg,tag=YellowVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run data modify entity @e[predicate=custom:indimension,type=marker,tag=VortexYellow,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[predicate=custom:indimension,type=egg,tag=YellowVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 store result score @e[predicate=custom:indimension,type=marker,tag=VortexYellow,limit=1,sort=nearest,distance=..5] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[predicate=custom:indimension,type=egg,tag=BlueVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["Vortex","VortexBlue"]}
execute as @e[predicate=custom:indimension,type=egg,tag=BlueVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 run data modify entity @e[predicate=custom:indimension,type=marker,tag=VortexBlue,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[predicate=custom:indimension,type=egg,tag=BlueVortex,scores={vortextimer=20..}] at @s align xyz positioned ~.5 ~ ~.5 store result score @e[predicate=custom:indimension,type=marker,tag=VortexBlue,limit=1,sort=nearest,distance=..5] UUIDTracker run scoreboard players get @s UUIDTracker
#Track Vortex with IDs and summon armor stands recursively - thanks iRobo for the algorithm!
scoreboard players add @e[predicate=custom:indimension,type=marker,tag=Vortex] VortexID 0
execute as @e[predicate=custom:indimension,type=marker,tag=Vortex,tag=!VortexFeathered,scores={VortexID=0}] at @s run function everytick:vortexid
kill @e[predicate=custom:indimension,type=egg,scores={vortextimer=20..}]
execute if entity @s[tag=!custVortParticle] as @e[predicate=custom:indimension,type=marker,tag=VortexYellow] at @s if score $dust CmdData matches 1 run particle minecraft:wax_on ~ ~0.3 ~ 0.5 0.5 0 0 3 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=VortexYellow] at @s if score $dust CmdData matches 1 run particle minecraft:dragon_breath ~ ~0.3 ~ 0.5 0.5 0 0 5 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=!custVortParticle] as @e[predicate=custom:indimension,type=marker,tag=VortexYellow] at @s if score $dust CmdData matches 1 run particle dust 1 1 0 1 ~ ~0.3 ~ 0.5 0.5 0 0 2 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=!custVortParticle] as @e[predicate=custom:indimension,type=marker,tag=VortexBlue] at @s if score $dust CmdData matches 1 run particle minecraft:scrape ~ ~0.3 ~ 0.5 0.5 0 0 3 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=VortexBlue] at @s if score $dust CmdData matches 1 run particle minecraft:dragon_breath ~ ~0.3 ~ 0.5 0.5 0 0 5 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=!custVortParticle] as @e[predicate=custom:indimension,type=marker,tag=VortexBlue] at @s if score $dust CmdData matches 1 run particle dust 0 0 1 1 ~ ~0.3 ~ 0.5 0.5 0 0 2 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
scoreboard players add @e[predicate=custom:indimension,type=marker,tag=Vortex] vortexBoom 0

##Spin around (unprimed)
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemBlue] at @s unless entity @a[predicate=custom:indimension,team=Yellow,gamemode=!spectator,distance=..4] unless score @e[predicate=custom:indimension,type=marker,tag=VortexBlue,sort=nearest,limit=1,distance=..2] vortexBoom matches 1.. run tp @s ~ ~ ~ ~15 ~
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemYellow] at @s unless entity @a[predicate=custom:indimension,team=Blue,gamemode=!spectator,distance=..4] unless score @e[predicate=custom:indimension,type=marker,tag=VortexYellow,sort=nearest,limit=1,distance=..2] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-15 ~

##Spin around (primed)
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemBlue] at @s unless entity @a[predicate=custom:indimension,team=Yellow,gamemode=!spectator,distance=..4] if score @e[predicate=custom:indimension,type=marker,tag=VortexBlue,sort=nearest,limit=1,distance=..2] vortexBoom matches 1.. run tp @s ~ ~ ~ ~30 ~
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemYellow] at @s unless entity @a[predicate=custom:indimension,team=Blue,gamemode=!spectator,distance=..4] if score @e[predicate=custom:indimension,type=marker,tag=VortexYellow,sort=nearest,limit=1,distance=..2] vortexBoom matches 1.. run tp @s ~ ~ ~ ~-30 ~

##Drift towards enemy player in close contact
execute if entity @s[tag=!GameEnd] as @e[predicate=custom:indimension,type=marker,tag=VortexBlue,scores={vortexBoom=1..}] at @s if entity @a[predicate=custom:indimension,team=Yellow,gamemode=!spectator,distance=..4] run tp @s ^ ^ ^.1 facing entity @p[team=Yellow,gamemode=!spectator,distance=..4]
execute if entity @s[tag=!GameEnd] as @e[predicate=custom:indimension,type=marker,tag=VortexYellow,scores={vortexBoom=1..}] at @s if entity @a[predicate=custom:indimension,team=Blue,gamemode=!spectator,distance=..4] run tp @s ^ ^ ^.1 facing entity @p[team=Blue,gamemode=!spectator,distance=..4]

#Teleport item to drifting Vortex recursively - thanks iRobo for the algorithm!
scoreboard players set $count VortexID 1
execute if entity @e[predicate=custom:indimension,type=marker,tag=Vortex,scores={vortexBoom=1..}] run function everytick:vortextp

##Face enemy player
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemBlue] at @s if entity @e[predicate=custom:indimension,type=marker,tag=VortexBlue,sort=nearest,limit=1,distance=..2] if entity @a[predicate=custom:indimension,team=Yellow,gamemode=!spectator,distance=..6] run tp @s ~ ~ ~ facing entity @p[team=Yellow,gamemode=!spectator,distance=..6]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemBlue] at @s if entity @e[predicate=custom:indimension,type=marker,tag=VortexBlue,sort=nearest,limit=1,distance=..2] if entity @a[predicate=custom:indimension,team=Yellow,gamemode=!spectator,distance=..6] run tp @s ~ ~ ~ ~-180 ~
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemYellow] at @s if entity @e[predicate=custom:indimension,type=marker,tag=VortexYellow,sort=nearest,limit=1,distance=..2] if entity @a[predicate=custom:indimension,team=Blue,gamemode=!spectator,distance=..6] run tp @s ~ ~ ~ facing entity @p[team=Blue,gamemode=!spectator,distance=..6]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemYellow] at @s if entity @e[predicate=custom:indimension,type=marker,tag=VortexYellow,sort=nearest,limit=1,distance=..2] if entity @a[predicate=custom:indimension,team=Blue,gamemode=!spectator,distance=..6] run tp @s ~ ~ ~ ~-180 ~

##Other explosion conditions
execute if entity @s[tag=!GameEnd] as @a[predicate=custom:indimension,team=Blue,gamemode=!spectator] at @s run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=VortexYellow,distance=..4,scores={vortexBoom=0}] vortexBoom 1
execute if entity @s[tag=!GameEnd] as @a[predicate=custom:indimension,team=Blue,gamemode=!spectator] at @s run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=VortexYellow,distance=..2,scores={vortexBoom=1..}] vortexBoom 1
execute if entity @s[tag=!GameEnd] as @a[predicate=custom:indimension,team=Yellow,gamemode=!spectator] at @s run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=VortexBlue,distance=..4,scores={vortexBoom=0}] vortexBoom 1
execute if entity @s[tag=!GameEnd] as @a[predicate=custom:indimension,team=Yellow,gamemode=!spectator] at @s run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=VortexBlue,distance=..2,scores={vortexBoom=1..}] vortexBoom 1
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=1}] at @s run playsound entity.shulker.hurt_closed master @a[predicate=custom:indimension] ~ ~ ~ 0.7 0
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=1}] at @s run playsound minecraft:block.sculk_sensor.clicking master @a[predicate=custom:indimension] ~ ~ ~ 1 1
tag @e[predicate=custom:indimension,type=marker,tag=Vortex,scores={vortexBoom=1}] add origin
scoreboard players set @e[predicate=custom:indimension,type=marker,tag=Vortex,scores={vortexBoom=1}] vortexBoom 2
execute as @e[predicate=custom:indimension,type=marker,tag=Vortex] at @s unless block ~ ~ ~ #custom:air unless block ~ ~ ~ moving_piston unless block ~ ~ ~ nether_portal run tag @s add originboom
execute as @e[predicate=custom:indimension,type=arrow] at @s run tag @e[predicate=custom:indimension,type=marker,tag=Vortex,distance=..2,limit=1] add originboom
execute as @e[predicate=custom:indimension,type=trident] at @s run tag @e[predicate=custom:indimension,type=marker,tag=Vortex,distance=..2,limit=1] add originboom
execute as @e[predicate=custom:indimension,type=tnt,nbt={Fuse:1s}] at @s run tag @e[predicate=custom:indimension,type=marker,tag=Vortex,distance=..5,limit=1] add originboom
execute as @e[predicate=custom:indimension,type=firework_rocket,tag=BlueNova] at @s run tag @e[predicate=custom:indimension,type=marker,tag=Vortex,distance=..2,limit=1] add originboom
execute as @e[predicate=custom:indimension,type=armor_stand,tag=bluenovatracker] at @s run tag @e[predicate=custom:indimension,type=marker,tag=Vortex,distance=..2,limit=1] add originboom
execute as @e[predicate=custom:indimension,type=firework_rocket,tag=YellowNova] at @s run tag @e[predicate=custom:indimension,type=marker,tag=Vortex,distance=..2,limit=1] add originboom
execute as @e[predicate=custom:indimension,type=armor_stand,tag=yellownovatracker] at @s run tag @e[predicate=custom:indimension,type=marker,tag=Vortex,distance=..2,limit=1] add originboom
tag @e[predicate=custom:indimension,type=marker,tag=Vortex,tag=originboom] add origin
scoreboard players set @e[predicate=custom:indimension,type=marker,tag=Vortex,tag=originboom,scores={vortexBoom=..9}] vortexBoom 10
tag @e[predicate=custom:indimension,type=marker,tag=Vortex,tag=originboom] remove originboom

##Kill stray item display entities
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemYellow] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=VortexYellow,distance=..3,limit=1,sort=nearest] run kill @s
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemBlue] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=VortexBlue,distance=..3,limit=1,sort=nearest] run kill @s

##Feathered vortex (Easter egg)
execute unless entity @s[tag=featheredOff] as @e[predicate=custom:indimension,type=chicken] unless entity @s[nbt={Age:0}] at @s run tag @s add SummonFeathered
scoreboard players set @e[predicate=custom:indimension,type=chicken,tag=SummonFeathered] RNGmax 99
execute as @e[predicate=custom:indimension,type=chicken,tag=SummonFeathered] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[predicate=custom:indimension,type=chicken,tag=SummonFeathered] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
tag @e[predicate=custom:indimension,type=chicken,tag=SummonFeathered,scores={RNGscore=0..49}] add FeatherConfirmed
execute as @e[predicate=custom:indimension,type=chicken,tag=FeatherConfirmed] at @s run playsound entity.chicken.hurt master @a[predicate=custom:indimension] ~ ~ ~ 2 0
execute as @e[predicate=custom:indimension,type=chicken,tag=FeatherConfirmed] at @s align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-1.2 ~ {Tags:["VortexItem","VortexItemFeathered"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:MHF_Chicken}}]}
execute as @e[predicate=custom:indimension,type=chicken,tag=FeatherConfirmed] at @s align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["Vortex","VortexFeathered"]}
execute as @e[predicate=custom:indimension,type=chicken] run data merge entity @s {DeathTime:19s}
execute as @e[predicate=custom:indimension,type=chicken] at @s run tp @s ~ ~-250 ~
kill @e[predicate=custom:indimension,type=chicken]
execute as @e[predicate=custom:indimension,type=marker,tag=VortexFeathered] at @s if score $dust CmdData matches 1 run particle dust 1 1 1 1 ~ ~0.4 ~ 0.5 0.5 0 0 10 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=VortexFeathered] at @s if score $dust CmdData matches 1 run particle wax_off ~ ~0.4 ~ 0.5 0.5 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemFeathered] at @s run tp @s ~ ~ ~ ~15 ~
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @e[predicate=custom:indimension,type=marker,tag=VortexFeathered] at @s as @a[predicate=custom:indimension,team=!Spectator,distance=..3] run advancement grant @s only achievements:rr_challenges/zzzzzzhuh
execute as @e[predicate=custom:indimension,type=marker,tag=VortexFeathered] at @s if entity @a[predicate=custom:indimension,team=!Spectator,distance=..3] run tag @s add origin
execute as @e[predicate=custom:indimension,type=armor_stand,tag=VortexItemFeathered] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=VortexFeathered,distance=..2,limit=1,sort=nearest] run kill @s

##Vortex chaining/explosion (incorporates delay)
execute as @e[predicate=custom:indimension,type=marker,tag=origin,scores={vortexBoom=3..}] at @s run function everytick:vortex_chain
scoreboard players set @e[predicate=custom:indimension,type=marker,tag=origin,scores={vortexBoom=0}] vortexBoom 10
scoreboard players add @e[predicate=custom:indimension,type=marker,tag=chained] vortexChain 1
execute as @e[predicate=custom:indimension,type=marker,tag=chained,scores={vortexChain=4..}] at @s run function everytick:vortex_chain
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10..},tag=!VortexFeathered] at @s run tag @a[predicate=custom:indimension,team=!Spectator,team=!Lobby,distance=..10] add UtilKilled
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10..},tag=!VortexFeathered] at @s store result score @a[predicate=custom:indimension,tag=UtilKilled,distance=..10] KillerUUID run scoreboard players get @s UUIDTracker
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=!VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Vortex"}',ExplosionRadius:3,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=!VortexFeathered] at @s run data modify entity @e[predicate=custom:indimension,type=creeper,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=!VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Vortex"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=ClutterCollector] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=!VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"a Vortex"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=!VortexFeathered] at @s run data modify entity @e[predicate=custom:indimension,type=creeper,limit=1,sort=nearest,distance=..5] CustomName set from entity @s CustomName
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10..},tag=!VortexFeathered] at @s run tag @e[predicate=custom:indimension,type=tnt,distance=..6] add UtilKilled
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10..},tag=!VortexFeathered] at @s store result score @e[predicate=custom:indimension,type=tnt,tag=UtilKilled,distance=..6] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10..},tag=!VortexFeathered] at @s run function game:nametnt

execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:2,CustomName:'{"text":"a... Feathery Vortex?"}',Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:4,CustomName:'{"text":"a... Feathery Vortex?"}',Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=ClutterCollector] as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10},tag=VortexFeathered] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Fuse:0,ExplosionRadius:0,CustomName:'{"text":"a... Feathery Vortex?"}',Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10}] at @s run kill @e[predicate=custom:indimension,type=arrow,distance=..2,limit=1,sort=nearest]
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10}] at @s run kill @e[predicate=custom:indimension,type=trident,distance=..2,limit=1,sort=nearest]
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10}] at @s run kill @e[predicate=custom:indimension,type=firework_rocket,tag=BlueNova,distance=..2,limit=1,sort=nearest]
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10}] at @s run kill @e[predicate=custom:indimension,type=firework_rocket,tag=YellowNova,distance=..2,limit=1,sort=nearest]
execute as @e[predicate=custom:indimension,type=marker,scores={vortexBoom=14..}] at @s run kill @s

scoreboard players add @e[predicate=custom:indimension,type=marker,scores={vortexBoom=10..}] vortexBoom 1