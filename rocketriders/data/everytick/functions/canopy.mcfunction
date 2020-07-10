#######################################
## CANOPY: A temporary leaf platform ##
## Used for quick long-range travel  ##
#######################################

##General Canopy functionality
#Canopy forgets owner upon death
execute as @a[team=Yellow,scores={respawn=1..}] at @s if score @s playerUUID = @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run scoreboard players reset @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID
execute as @a[team=Blue,scores={respawn=1..}] at @s if score @s playerUUID = @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID

#Canopy quick deploy when near the base of its own team color
execute as @e[tag=BluePlatform,scores={PlatTime=..57},type=area_effect_cloud] at @s if predicate custom:canopy_nearblue run scoreboard players add @s PlatTime 3
execute as @e[tag=YellowPlatform,scores={PlatTime=..57},type=area_effect_cloud] at @s if predicate custom:canopy_nearyellow run scoreboard players add @s PlatTime 3

#Canopy deploy animation/sounds
execute as @e[scores={PlatTime=1..50},type=area_effect_cloud] at @s run particle block spruce_leaves ~ ~ ~ 1 0 1 0.1 10
execute as @e[scores={PlatTime=1},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[scores={PlatTime=5},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-1,name:"minecraft:canopy1"}
execute as @e[scores={PlatTime=5},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=5},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=5},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[scores={PlatTime=10},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-2,name:"minecraft:canopy2"}
execute as @e[scores={PlatTime=10},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=10},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=10},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[scores={PlatTime=15},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-3,name:"minecraft:canopy3"}
execute as @e[scores={PlatTime=15},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=15},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=15},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=20},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy4"}
execute as @e[scores={PlatTime=20},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=20},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=20},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=25},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy5"}
execute as @e[scores={PlatTime=25},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=25},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=25},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=30},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy6"}
execute as @e[scores={PlatTime=30},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=30},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=30},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=35},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy7"}
execute as @e[scores={PlatTime=35},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=35},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=35},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=40},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy8"}
execute as @e[scores={PlatTime=40},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=40},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=40},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=45},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy9"}
execute as @e[scores={PlatTime=45},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=45},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=45},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6

execute as @e[scores={PlatTime=50},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy10"}
execute as @e[scores={PlatTime=50},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=50},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=50},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6

execute as @e[scores={PlatTime=55},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy11"}
execute as @e[scores={PlatTime=55},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=55},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=55},type=area_effect_cloud] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0

execute as @e[scores={PlatTime=56},type=area_effect_cloud] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy12"}
execute as @e[scores={PlatTime=56},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=56},type=area_effect_cloud] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=56},type=area_effect_cloud] at @s run particle block spruce_leaves ~ ~2 ~ 1 1 1 1 300

execute as @e[scores={PlatTime=58},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute as @e[scores={PlatTime=58},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute as @e[scores={PlatTime=58},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute as @e[scores={PlatTime=58},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves

#Ender Pearl UUID storage - necessary for accurate teleports
execute as @e[type=ender_pearl] store result score @s pearlOwnerUUID run data get entity @s Owner[0]


##Yellow Canopy functionality
execute as @a[team=Yellow,scores={ThrowPlat=1..}] at @s run tag @e[type=ender_pearl,sort=nearest,limit=1,distance=..5,tag=!BluePlat,tag=!YellowPlat] add YellowPlat
execute as @e[tag=YellowPlat,type=ender_pearl] at @s run particle dust 1 2 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[tag=YellowPlat,type=ender_pearl] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a
execute as @e[tag=YellowPlat,type=ender_pearl] at @s run scoreboard players add @s testplat 1
#Next 4 commands disable Yellow Canopies inside of portals
execute as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
execute as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
#Disable Yellow Canopies near void
execute as @e[scores={testplat=9..10},type=ender_pearl] at @s if predicate custom:nearvoid run scoreboard players remove @s testplat 2
execute as @e[scores={testplat=10},type=ender_pearl] at @s run setblock ~ ~1 ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"minecraft:yellowcanopy1"}
execute as @e[scores={testplat=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat=10},type=ender_pearl] at @s run playsound ui.stonecutter.take_result player @a ~ ~ ~ 2 0
execute as @e[scores={testplat=10},type=ender_pearl] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[scores={testplat=10},type=ender_pearl] at @s align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["YellowPlatform"]}
execute as @e[scores={testplat=10},type=ender_pearl] at @s align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["Platform"]}
scoreboard players add @e[tag=YellowPlatform,type=area_effect_cloud] PlatTime 1
execute as @e[scores={testplat=10},type=ender_pearl] at @s store result score @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run scoreboard players get @s pearlOwnerUUID
kill @e[scores={testplat=10..},type=ender_pearl]
#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
#Reset the motion before teleporting (thanks to @dragonmaster95 for the suggestion!)
execute as @a[team=Yellow] if score @s playerUUID = @e[tag=YellowPlatform,scores={PlatTime=1..3},limit=1,sort=arbitrary,type=area_effect_cloud] pearlOwnerUUID at @s run tp @s @s
execute as @a[team=Yellow] if score @s playerUUID = @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary,type=area_effect_cloud] pearlOwnerUUID at @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary,type=area_effect_cloud] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute as @a[team=Yellow] at @s if score @s playerUUID = @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect give @s slow_falling 2 100 true
execute as @a[team=Yellow] at @s unless predicate custom:canopy_nearyellow if score @s playerUUID = @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect give @s jump_boost 2 128 true
execute as @a[team=Yellow] at @s unless predicate custom:canopy_nearyellow if score @s playerUUID = @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect give @s slowness 2 255 true
execute as @a[team=Yellow] at @s if score @s playerUUID = @e[tag=YellowPlatform,scores={PlatTime=41..},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect clear @s slow_falling
#After 2 seconds the canopy gives up
scoreboard players reset @e[tag=YellowPlatform,scores={PlatTime=41},type=area_effect_cloud] pearlOwnerUUID


##Blue Canopy functionality
execute as @a[team=Blue,scores={ThrowPlat=1..}] at @s run tag @e[type=ender_pearl,sort=nearest,limit=1,distance=..5,tag=!BluePlat,tag=!YellowPlat] add BluePlat
execute as @e[tag=BluePlat,type=ender_pearl] at @s run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[tag=BluePlat,type=ender_pearl] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a
execute as @e[tag=BluePlat,type=ender_pearl] at @s run scoreboard players add @s testplat2 1
#Next 4 commands disable Blue Canopies inside of portals
execute as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute as @e[scores={testplat2=10},type=ender_pearl] at @s run setblock ~ ~1 ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"minecraft:bluecanopy1"}
#Disable Blue Canopies near void
execute as @e[scores={testplat2=9..10},type=ender_pearl] at @s if predicate custom:nearvoid run scoreboard players remove @s testplat2 2
execute as @e[tag=BluePlat,scores={testplat2=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[tag=BluePlat,scores={testplat2=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[tag=BluePlat,scores={testplat2=10},type=ender_pearl] at @s run playsound ui.stonecutter.take_result player @a ~ ~ ~ 2 0
execute as @e[tag=BluePlat,scores={testplat2=10},type=ender_pearl] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[tag=BluePlat,scores={testplat2=10},type=ender_pearl] at @s run playsound block.grass.place player @a ~ ~ ~ 2 0
execute as @e[tag=BluePlat,scores={testplat2=10},type=ender_pearl] at @s align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["BluePlatform"]}
execute as @e[scores={testplat2=10},type=ender_pearl] at @s align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~1 ~ {Duration:2000000000,Tags:["Platform"]}
scoreboard players add @e[tag=BluePlatform,type=area_effect_cloud] PlatTime 1
execute as @e[scores={testplat2=10},type=ender_pearl] at @s store result score @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run scoreboard players get @s pearlOwnerUUID
kill @e[scores={testplat2=10..},type=ender_pearl]
#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
#Reset the motion before teleporting (thanks to @dragonmaster95 for the suggestion!)
execute as @a[team=Blue] if score @s playerUUID = @e[tag=BluePlatform,scores={PlatTime=1..3},limit=1,sort=arbitrary,type=area_effect_cloud] pearlOwnerUUID at @s run tp @s @s
execute as @a[team=Blue] if score @s playerUUID = @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary,type=area_effect_cloud] pearlOwnerUUID at @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=arbitrary,type=area_effect_cloud] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute as @a[team=Blue] at @s if score @s playerUUID = @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect give @s slow_falling 2 100 true
execute as @a[team=Blue] at @s unless predicate custom:canopy_nearblue if score @s playerUUID = @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect give @s jump_boost 2 128 true
execute as @a[team=Blue] at @s unless predicate custom:canopy_nearblue if score @s playerUUID = @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect give @s slowness 2 255 true
execute as @a[team=Blue] at @s if score @s playerUUID = @e[tag=BluePlatform,scores={PlatTime=41..},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run effect clear @s slow_falling
#After 2 seconds the Canopy gives up
scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=41},type=area_effect_cloud] pearlOwnerUUID


##More general Canopy functionalities
#Fire poofing
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~-1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~ ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~1 ~ ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~-1 ~ ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~ ~1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~ ~-1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~1 ~1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~-1 ~1 ~ fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~1 ~1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~1 ~-1 fire run tag @s add FirePoof
execute as @e[scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~2 ~ fire run tag @s add FirePoof
execute as @e[tag=FirePoof,type=area_effect_cloud] at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 2 0
execute as @e[tag=FirePoof,type=area_effect_cloud] at @s run playsound block.fire.ambient player @a ~ ~ ~ 2 2
execute as @e[tag=FirePoof,type=area_effect_cloud] at @s run fill ~ ~ ~ ~ ~1 ~ air destroy
execute as @e[tag=FirePoof,type=area_effect_cloud] at @s run fill ~-3 ~2 ~-3 ~3 ~1 ~3 fire replace air
execute as @e[tag=FirePoof,type=area_effect_cloud] at @s run particle flame ~ ~ ~ 2 0 2 0.15 250 force @a
execute as @e[tag=FirePoof,type=area_effect_cloud] at @s run particle lava ~ ~ ~ 2 0 2 0.1 20 force @a
execute as @e[tag=FirePoof,type=area_effect_cloud] at @s run particle explosion_emitter ~ ~ ~ 2 0 2 0.1 1 force @a
kill @e[tag=FirePoof,type=area_effect_cloud]

#Canopy durations
execute as @e[scores={PlatTime=4..},type=area_effect_cloud] at @s unless block ~ ~1 ~ oak_wood run scoreboard players set @s PlatTime 400
execute as @e[scores={PlatTime=4..},type=area_effect_cloud] at @s unless block ~ ~ ~ oak_wood run scoreboard players set @s PlatTime 400
execute as @e[scores={PlatTime=220..},type=area_effect_cloud] at @s run particle block oak_wood ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a
execute as @e[scores={PlatTime=220},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=225},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=230},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=235},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=240},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.4
execute as @e[scores={PlatTime=245},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.5
execute as @e[scores={PlatTime=250},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.6
execute as @e[scores={PlatTime=255},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.7
execute as @e[scores={PlatTime=260},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.8
execute as @e[scores={PlatTime=265},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 0.9
execute as @e[scores={PlatTime=270},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=275},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1.2
execute as @e[scores={PlatTime=280},type=area_effect_cloud] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1.5
execute as @e[scores={PlatTime=300},type=area_effect_cloud] at @s run particle block oak_wood ~ ~1 ~ 0.5 0.5 0.5 1 100 force @a
#Hotfix for persistent leaves
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s if block ~ ~ ~ oak_wood run setblock ~ ~ ~ air destroy
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s if block ~ ~1 ~ oak_wood run setblock ~ ~1 ~ air destroy
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s if block ~1 ~1 ~ #minecraft:banners run setblock ~1 ~1 ~ air destroy
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s if block ~-1 ~1 ~ #minecraft:banners run setblock ~-1 ~1 ~ air destroy
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s if block ~ ~1 ~1 #minecraft:banners run setblock ~ ~1 ~1 air destroy
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s if block ~ ~1 ~-1 #minecraft:banners run setblock ~ ~1 ~-1 air destroy

#Hotfix for a bug where breaking the banners and pushing the log blocks in a Canopy allows you to cheat the auto-decay system
execute as @e[scores={PlatTime=300..},type=area_effect_cloud] at @s run scoreboard players set @e[tag=Platform,limit=1,sort=nearest,type=area_effect_cloud] canopyExtraLogs 1
scoreboard players add @e[tag=Platform,scores={canopyExtraLogs=1..},type=area_effect_cloud] canopyExtraLogs 1
execute as @e[tag=Platform,scores={canopyExtraLogs=4..},type=area_effect_cloud] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace oak_wood
scoreboard players reset @e[tag=Platform,scores={canopyExtraLogs=4..},type=area_effect_cloud] canopyExtraLogs

#Kill entity once Canopy expires
kill @e[scores={PlatTime=300..},type=area_effect_cloud]

#Fire arrow logs
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run setblock ~ ~.5 ~ fire
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run setblock ~ ~-.5 ~ fire
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 oak_wood positioned ^ ^ ^-0.1 run setblock ~ ~-1 ~ fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 oak_wood positioned ^ ^ ^0.1 run setblock ~ ~1 ~ fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 oak_wood run tag @s add FireArrow

#Arrows catch leaves on fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 #leaves run setblock ^ ^ ^-0.1 fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 #leaves run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 #leaves run setblock ^ ^ ^0.1 fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 #leaves run tag @s add FireArrow

#Fireballs poof Canopies
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] if entity @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] run tag @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] add FirePoof
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] if entity @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] run tag @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] add FirePoof
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace #minecraft:leaves
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace oak_log