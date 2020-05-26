#Canopy slow deploy.
execute as @e[scores={PlatTime=1..50}] at @s run particle block spruce_leaves ~ ~ ~ 1 0 1 0.1 10
execute as @e[scores={PlatTime=1}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2
execute as @e[scores={PlatTime=5}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2
execute as @e[scores={PlatTime=10}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2


execute as @e[scores={PlatTime=5}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-1,name:"minecraft:canopy1"}
execute as @e[scores={PlatTime=5}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=5}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=10}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-2,name:"minecraft:canopy2"}
execute as @e[scores={PlatTime=10}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=10}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]


execute as @e[scores={PlatTime=15}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=20}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=25}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1


execute as @e[scores={PlatTime=15}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-3,name:"minecraft:canopy3"}
execute as @e[scores={PlatTime=15}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=15}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=20}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy4"}
execute as @e[scores={PlatTime=20}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=20}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=25}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy5"}
execute as @e[scores={PlatTime=25}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=25}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=30}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy6"}
execute as @e[scores={PlatTime=30}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=30}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=35}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy7"}
execute as @e[scores={PlatTime=35}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=35}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=40}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy8"}
execute as @e[scores={PlatTime=40}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=40}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=45}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy9"}
execute as @e[scores={PlatTime=45}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=45}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=50}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy10"}
execute as @e[scores={PlatTime=50}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=50}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=55}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy11"}
execute as @e[scores={PlatTime=55}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=55}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]

execute as @e[scores={PlatTime=56}] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy12"}
execute as @e[scores={PlatTime=56}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=56}] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=56}] at @s run particle block spruce_leaves ~ ~2 ~ 1 1 1 1 300

execute as @e[scores={PlatTime=25}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=30}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=35}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=40}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1


execute as @e[scores={PlatTime=45}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6
execute as @e[scores={PlatTime=50}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6
execute as @e[scores={PlatTime=55}] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0


execute as @e[scores={PlatTime=57}] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute as @e[scores={PlatTime=57}] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute as @e[scores={PlatTime=57}] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute as @e[scores={PlatTime=57}] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves

#uuid storage
execute as @a store result score @s playerUUIDM run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @a store result score @s playerUUIDL run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute as @e[type=ender_pearl] store result score @s pearlOwnerUUIDM run data get entity @s owner.M 0.00000000023283064365386962890625
execute as @e[type=ender_pearl] store result score @s pearlOwnerUUIDL run data get entity @s owner.L 0.00000000023283064365386962890625
#effect give @a[scores={ThrowPlat=1..}] resistance 1 100 true

#yellow canopy
execute as @a[team=Yellow,scores={ThrowPlat=1..}] at @s run tag @e[type=ender_pearl,sort=nearest,limit=1] add YellowPlat
execute as @e[tag=YellowPlat] at @s run particle dust 1 2 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[tag=YellowPlat] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a
execute as @e[tag=YellowPlat] at @s run scoreboard players add @s testplat 1
#next 3 commands account for obstructed canopies (DISABLED UNTIL FURTHER NOTICE)
#execute as @e[scores={testplat=..9}] at @s unless block ^ ^ ^1 air run scoreboard players set @s testplat 10
#execute as @e[scores={testplat=..9}] at @s unless block ^ ^1 ^1 air run scoreboard players set @s testplat 10
#execute as @e[scores={testplat=..9}] at @s unless block ^ ^1 ^1 air run scoreboard players set @s testplat 10
#next 4 commands disable yellow canopies inside of portals
execute as @e[scores={testplat=9..10}] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute as @e[scores={testplat=9..10}] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
execute as @e[scores={testplat=9..10}] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute as @e[scores={testplat=9..10}] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
execute as @e[scores={testplat=10}] at @s run setblock ~ ~1 ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"minecraft:yellowcanopy1"}
execute as @e[scores={testplat=10}] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat=10}] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat=10}] at @s run playsound ui.stonecutter.take_result player @a ~ ~ ~ 2 0
execute as @e[scores={testplat=10}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[scores={testplat=10}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["YellowPlatform"]}
execute as @e[scores={testplat=10}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["Platform"]}
scoreboard players add @e[tag=YellowPlatform] PlatTime 1
execute as @e[scores={testplat=10}] at @s store result score @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDM run scoreboard players get @s pearlOwnerUUIDM
execute as @e[scores={testplat=10}] at @s store result score @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run scoreboard players get @s pearlOwnerUUIDL
kill @e[scores={testplat=10..}]
#the teleport window for players on canopies is 2 seconds. this is to ensure that falling players arrive on the canopy safely and to reduce lag-induced oddities with canopies.
execute as @a[team=Yellow] if score @s playerUUIDL = @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary] pearlOwnerUUIDL at @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute as @a[team=Yellow] at @s if score @s playerUUIDL = @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run effect give @s slow_falling 1 100 true
execute as @a[team=Yellow] at @s if score @s playerUUIDL = @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run effect give @s jump_boost 2 128 true
execute as @a[team=Yellow] at @s if score @s playerUUIDL = @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run effect give @s slowness 2 255 true
#after 2 seconds the canopy gives up
execute as @a[team=Yellow] at @s if score @s playerUUIDL = @e[tag=YellowPlatform,scores={PlatTime=8},limit=1,sort=nearest] pearlOwnerUUIDL run effect clear @s slow_falling
scoreboard players reset @e[tag=YellowPlatform,scores={PlatTime=41}] pearlOwnerUUIDL
scoreboard players reset @e[tag=YellowPlatform,scores={PlatTime=41}] pearlOwnerUUIDM

#blue canopy
execute as @a[team=Blue,scores={ThrowPlat=1..}] at @s run tag @e[type=ender_pearl,sort=nearest,limit=1] add BluePlat
execute as @e[tag=BluePlat] at @s run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[tag=BluePlat] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a
execute as @e[tag=BluePlat] at @s run scoreboard players add @s testplat2 1
#next 3 commands account for obstructed canopies (DISABLED UNTIL FURTHER NOTICE)
#execute as @e[scores={testplat2=..9}] at @s unless block ^ ^ ^1 air run scoreboard players set @s testplat2 10
#execute as @e[scores={testplat2=..9}] at @s unless block ^ ^1 ^1 air run scoreboard players set @s testplat2 10
#execute as @e[scores={testplat2=..9}] at @s unless block ^ ^1 ^1 air run scoreboard players set @s testplat2 10
#next 4 commands disable blue canopies inside of portals
execute as @e[scores={testplat2=9..10}] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute as @e[scores={testplat2=9..10}] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute as @e[scores={testplat2=9..10}] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute as @e[scores={testplat2=9..10}] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute as @e[scores={testplat2=10}] at @s run setblock ~ ~1 ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"minecraft:bluecanopy1"}
execute as @e[tag=BluePlat,scores={testplat2=10}] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[tag=BluePlat,scores={testplat2=10}] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[tag=BluePlat,scores={testplat2=10}] at @s run playsound ui.stonecutter.take_result player @a ~ ~ ~ 2 0
execute as @e[tag=BluePlat,scores={testplat2=10}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[tag=BluePlat,scores={testplat2=10}] at @s run playsound block.grass.place player @a ~ ~ ~ 2 0
execute as @e[tag=BluePlat,scores={testplat2=10}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["BluePlatform"]}
execute as @e[scores={testplat2=10}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["Platform"]}
scoreboard players add @e[tag=BluePlatform] PlatTime 1
execute as @e[scores={testplat2=10}] at @s store result score @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDM run scoreboard players get @s pearlOwnerUUIDM
execute as @e[scores={testplat2=10}] at @s store result score @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run scoreboard players get @s pearlOwnerUUIDL
kill @e[scores={testplat2=10..}]
#the teleport window for players on canopies is 2 seconds. this is to ensure that falling players arrive on the canopy safely and to reduce lag-induced oddities with canopies.
execute as @a[team=Blue] if score @s playerUUIDL = @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary] pearlOwnerUUIDL at @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute as @a[team=Blue] at @s if score @s playerUUIDL = @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run effect give @s slow_falling 1 100 true
execute as @a[team=Blue] at @s if score @s playerUUIDL = @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run effect give @s jump_boost 2 128 true
execute as @a[team=Blue] at @s if score @s playerUUIDL = @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest] pearlOwnerUUIDL run effect give @s slowness 2 255 true
#after 2 seconds the canopy gives up
execute as @a[team=Blue] at @s if score @s playerUUIDL = @e[tag=BluePlatform,scores={PlatTime=8},limit=1,sort=nearest] pearlOwnerUUIDL run effect clear @s slow_falling
scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=41}] pearlOwnerUUIDL
scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=41}] pearlOwnerUUIDM

#FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~-1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~ ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~1 ~ ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~-1 ~ ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~ ~1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~ ~-1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~1 ~1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~-1 ~1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~1 ~1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~1 ~-1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300}] at @s if block ~ ~2 ~ fire run tag @s add FirePoof
execute as @e[tag=FirePoof] at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 2 0
execute as @e[tag=FirePoof] at @s run playsound block.fire.ambient player @a ~ ~ ~ 2 2
execute as @e[tag=FirePoof] at @s run fill ~ ~ ~ ~ ~1 ~ air destroy
execute as @e[tag=FirePoof] at @s run fill ~-3 ~2 ~-3 ~3 ~1 ~3 fire replace air
execute as @e[tag=FirePoof] at @s run particle flame ~ ~ ~ 2 0 2 0.15 250 force @a
execute as @e[tag=FirePoof] at @s run particle lava ~ ~ ~ 2 0 2 0.1 20 force @a
execute as @e[tag=FirePoof] at @s run particle explosion_emitter ~ ~ ~ 2 0 2 0.1 1 force @a
kill @e[tag=FirePoof]

#Platform durations
#old command; unreliable
#execute as @e[scores={PlatTime=2..2}] at @s run tp @p[team=!Developer,team=!Lobby,team=!Spectator] ~ ~3 ~
execute as @e[scores={PlatTime=4..}] at @s unless block ~ ~1 ~ oak_wood run scoreboard players set @s PlatTime 400
execute as @e[scores={PlatTime=4..}] at @s unless block ~ ~ ~ oak_wood run scoreboard players set @s PlatTime 400
#for glowing shulkers in platforms, uncomment these
#execute as @e[tag=YellowPlatform,scores={PlatTime=1..1}] at @s run summon shulker ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Team:"Yellow",NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
#execute as @e[tag=BluePlatform,scores={PlatTime=1..1}] at @s run summon shulker ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Team:"Blue",NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
#execute as @e[scores={PlatTime=400..}] at @s run tp @e[type=shulker,distance=..4,sort=nearest] ~ ~-1000 ~
execute as @e[scores={PlatTime=220..}] at @s run particle block oak_wood ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a
execute as @e[scores={PlatTime=220}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=225}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=230}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=235}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=240}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.4
execute as @e[scores={PlatTime=245}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.5
execute as @e[scores={PlatTime=250}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.6
execute as @e[scores={PlatTime=255}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.7
execute as @e[scores={PlatTime=260}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.8
execute as @e[scores={PlatTime=265}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.9
execute as @e[scores={PlatTime=270}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=275}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1.2
execute as @e[scores={PlatTime=280}] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1.5
execute as @e[scores={PlatTime=300}] at @s run particle block oak_wood ~ ~1 ~ 0.5 0.5 0.5 1 100 force @a
execute as @e[scores={PlatTime=300..}] at @s if block ~ ~ ~ oak_wood run setblock ~ ~ ~ air destroy
execute as @e[scores={PlatTime=300..}] at @s if block ~ ~1 ~ oak_wood run setblock ~ ~1 ~ air destroy
execute as @e[scores={PlatTime=300..}] at @s if block ~1 ~1 ~ #minecraft:banners run setblock ~1 ~1 ~ air destroy
execute as @e[scores={PlatTime=300..}] at @s if block ~-1 ~1 ~ #minecraft:banners run setblock ~-1 ~1 ~ air destroy
execute as @e[scores={PlatTime=300..}] at @s if block ~ ~1 ~1 #minecraft:banners run setblock ~ ~1 ~1 air destroy
execute as @e[scores={PlatTime=300..}] at @s if block ~ ~1 ~-1 #minecraft:banners run setblock ~ ~1 ~-1 air destroy

#hotfix for a bug where breaking the banners and pushing the log blocks in a canopy allows you to cheat the autodecay system
execute as @e[scores={PlatTime=300..}] at @s run scoreboard players set @e[tag=Platform,limit=1,sort=nearest] canopyExtraLogs 1
scoreboard players add @e[tag=Platform,scores={canopyExtraLogs=1..}] canopyExtraLogs 1
execute as @e[tag=Platform,scores={canopyExtraLogs=4..}] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace oak_wood
scoreboard players reset @e[tag=Platform,scores={canopyExtraLogs=4..}] canopyExtraLogs

kill @e[scores={PlatTime=300..}]

#fire arrow logs
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run setblock ~ ~.5 ~ fire
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run setblock ~ ~-.5 ~ fire
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 oak_wood positioned ^ ^ ^-0.1 run setblock ~ ~-1 ~ fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 oak_wood positioned ^ ^ ^0.1 run setblock ~ ~1 ~ fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 oak_wood run tag @s add FireArrow

#fire arrow leaves
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 #leaves run setblock ^ ^ ^-0.1 fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 #leaves run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 #leaves run setblock ^ ^ ^0.1 fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 #leaves run tag @s add FireArrow

#fireball poof
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] if entity @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400}] run tag @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400}] add FirePoof
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] if entity @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400}] run tag @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400}] add FirePoof
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace #minecraft:leaves
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace oak_log