#######################################
## CANOPY: A temporary leaf platform ##
## Used for quick long-range travel  ##
#######################################

##General Canopy functionality
#Canopy quick deploy when near the base of its own team color
execute as @e[tag=BluePlatform,scores={PlatTime=..57},type=area_effect_cloud,tag=!waterTemp,tag=!animated] at @s if predicate custom:canopy_nearblue run scoreboard players add @s PlatTime 3
execute as @e[tag=YellowPlatform,scores={PlatTime=..57},type=area_effect_cloud,tag=!waterTemp,tag=!animated] at @s if predicate custom:canopy_nearyellow run scoreboard players add @s PlatTime 3

#Canopy deploy animation/sounds
execute as @e[scores={PlatTime=1..50},type=area_effect_cloud,tag=!animated] at @s run particle block spruce_leaves ~ ~ ~ 1 0 1 0.1 10
execute as @e[scores={PlatTime=1},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[scores={PlatTime=5},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-1,name:"minecraft:canopy1"}
execute as @e[scores={PlatTime=5},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=5},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=5},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[scores={PlatTime=10},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-2,name:"minecraft:canopy2"}
execute as @e[scores={PlatTime=10},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=10},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=10},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[scores={PlatTime=15},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:-3,name:"minecraft:canopy3"}
execute as @e[scores={PlatTime=15},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=15},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=15},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=20},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy4"}
execute as @e[scores={PlatTime=20},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=20},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=20},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=25},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy5"}
execute as @e[scores={PlatTime=25},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=25},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=25},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=30},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy6"}
execute as @e[scores={PlatTime=30},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=30},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=30},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[scores={PlatTime=35},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy7"}
execute as @e[scores={PlatTime=35},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=35},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=35},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=35},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

execute as @e[scores={PlatTime=40},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy8"}
execute as @e[scores={PlatTime=40},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=40},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=40},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1
execute as @e[scores={PlatTime=40},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

execute as @e[scores={PlatTime=45},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy9"}
execute as @e[scores={PlatTime=45},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=45},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=45},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6
execute as @e[scores={PlatTime=45},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

execute as @e[scores={PlatTime=50},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy10"}
execute as @e[scores={PlatTime=50},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=50},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=50},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6
execute as @e[scores={PlatTime=50},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

execute as @e[scores={PlatTime=55},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy11"}
execute as @e[scores={PlatTime=55},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=55},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=55},type=area_effect_cloud,tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0
execute as @e[scores={PlatTime=55},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

execute as @e[scores={PlatTime=56},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-3,name:"minecraft:canopy12"}
execute as @e[scores={PlatTime=56},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=56},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 observer[facing=north,powered=true]
execute as @e[scores={PlatTime=56},type=area_effect_cloud,tag=!animated] at @s run particle block spruce_leaves ~ ~2 ~ 1 1 1 1 300
execute as @e[scores={PlatTime=56},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

execute as @e[scores={PlatTime=58},type=area_effect_cloud,tag=!animated] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute as @e[scores={PlatTime=58},type=area_effect_cloud,tag=!animated] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute as @e[scores={PlatTime=58},type=area_effect_cloud,tag=!animated] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute as @e[scores={PlatTime=58},type=area_effect_cloud,tag=!animated] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute as @e[scores={PlatTime=58},type=area_effect_cloud,tag=!animated] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

tag @e[scores={PlatTime=58..},type=area_effect_cloud] add animated

#Ender Pearl UUID storage - necessary for accurate teleports
execute as @e[type=ender_pearl] store result score @s pearlOwnerUUID run data get entity @s Owner[0]

##Yellow Canopy functionality
execute as @a[team=Yellow,scores={ThrowPlat=1..}] at @s run tag @e[type=ender_pearl,sort=nearest,limit=1,distance=..5,tag=!BluePlat,tag=!YellowPlat] add YellowPlat
execute as @e[tag=YellowPlat,type=ender_pearl] at @s run particle dust 1 2 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[tag=YellowPlat,type=ender_pearl] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a
execute as @e[tag=YellowPlat,type=ender_pearl] at @s run scoreboard players add @s testplat 1
#Next 4 commands disable Yellow Canopies inside of portals
execute unless entity @s[tag=noPortal] as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute unless entity @s[tag=noPortal] as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
execute unless entity @s[tag=noPortal] as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute unless entity @s[tag=noPortal] as @e[scores={testplat=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
#Disable Yellow Canopies near void
execute as @e[scores={testplat=9..10},type=ender_pearl] at @s if predicate custom:nearvoid run scoreboard players remove @s testplat 2
execute as @e[scores={testplat=10},type=ender_pearl,predicate=!custom:nearvoid] at @s run setblock ~ ~1 ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"minecraft:yellowcanopy1"}
execute as @e[scores={testplat=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat=10},type=ender_pearl] at @s run playsound ui.stonecutter.take_result player @a ~ ~ ~ 2 0
execute as @e[scores={testplat=10},type=ender_pearl] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[scores={testplat=10},type=ender_pearl] at @s align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["YellowPlatform"]}
scoreboard players add @e[tag=YellowPlatform,type=area_effect_cloud] PlatTime 1
execute as @e[scores={testplat=10},type=ender_pearl] at @s store result score @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run scoreboard players get @s pearlOwnerUUID
kill @e[scores={testplat=10..},type=ender_pearl]
execute as @e[tag=YellowPlatform,scores={PlatTime=1},type=area_effect_cloud] run data modify storage rocketriders:canopypos x prepend from entity @s Pos[0]
execute as @e[tag=YellowPlatform,scores={PlatTime=1},type=area_effect_cloud] run data modify storage rocketriders:canopypos y prepend from entity @s Pos[1]
execute as @e[tag=YellowPlatform,scores={PlatTime=1},type=area_effect_cloud] run data modify storage rocketriders:canopypos z prepend from entity @s Pos[2]
execute as @e[tag=YellowPlatform,scores={PlatTime=1},type=area_effect_cloud] run scoreboard players add @e[tag=Selection,type=armor_stand] canopyCount 1
#Teleporting happens in another function
execute if entity @e[tag=YellowPlatform,type=area_effect_cloud,scores={PlatTime=..41}] run function everytick:canopy_tpyellow
tag @e[tag=YellowPlatform,type=area_effect_cloud] remove checkedTP
tag @a[team=Yellow] remove checkedTP
execute as @a[team=Yellow,tag=!teleported,tag=canopyTP] run effect clear @s slow_falling
execute as @a[team=Yellow,tag=!teleported,tag=canopyTP] run effect clear @s slowness
execute as @a[team=Yellow,tag=!teleported,tag=canopyTP] run effect clear @s jump_boost
tag @a[team=Yellow,tag=!teleported] remove canopyTP
tag @a[team=Yellow] remove teleported
execute as @e[tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,distance=..6] respawn 0
#After 2 seconds the Canopy gives up teleporting
scoreboard players reset @e[tag=YellowPlatform,scores={PlatTime=41},type=area_effect_cloud] pearlOwnerUUID

##Blue Canopy functionality
execute as @a[team=Blue,scores={ThrowPlat=1..}] at @s run tag @e[type=ender_pearl,sort=nearest,limit=1,distance=..5,tag=!BluePlat,tag=!YellowPlat] add BluePlat
execute as @e[tag=BluePlat,type=ender_pearl] at @s run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a
execute as @e[tag=BluePlat,type=ender_pearl] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a
execute as @e[tag=BluePlat,type=ender_pearl] at @s run scoreboard players add @s testplat2 1
#Next 4 commands disable Blue Canopies inside of portals
execute unless entity @s[tag=noPortal] as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute unless entity @s[tag=noPortal] as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute unless entity @s[tag=noPortal] as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute unless entity @s[tag=noPortal] as @e[scores={testplat2=9..10},type=ender_pearl] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
#Disable Blue Canopies near void
execute as @e[scores={testplat2=9..10},type=ender_pearl] at @s if predicate custom:nearvoid run scoreboard players remove @s testplat2 2
execute as @e[scores={testplat2=10},type=ender_pearl] at @s run setblock ~ ~1 ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"minecraft:bluecanopy1"}
execute as @e[scores={testplat2=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat2=10},type=ender_pearl] at @s run setblock ~ ~ ~ observer[facing=down,powered=true]
execute as @e[scores={testplat2=10},type=ender_pearl] at @s run playsound ui.stonecutter.take_result player @a ~ ~ ~ 2 0
execute as @e[scores={testplat2=10},type=ender_pearl] at @s run playsound block.wood.break player @a ~ ~ ~ 2 1
execute as @e[scores={testplat2=10},type=ender_pearl] at @s run playsound block.grass.place player @a ~ ~ ~ 2 0
execute as @e[scores={testplat2=10},type=ender_pearl] at @s align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["BluePlatform"]}
scoreboard players add @e[tag=BluePlatform,type=area_effect_cloud] PlatTime 1
execute as @e[scores={testplat2=10},type=ender_pearl] at @s store result score @e[tag=BluePlatform,scores={PlatTime=1},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUID run scoreboard players get @s pearlOwnerUUID
kill @e[scores={testplat2=10..},type=ender_pearl]
execute as @e[tag=BluePlatform,scores={PlatTime=1},type=area_effect_cloud] run data modify storage rocketriders:canopypos x prepend from entity @s Pos[0]
execute as @e[tag=BluePlatform,scores={PlatTime=1},type=area_effect_cloud] run data modify storage rocketriders:canopypos y prepend from entity @s Pos[1]
execute as @e[tag=BluePlatform,scores={PlatTime=1},type=area_effect_cloud] run data modify storage rocketriders:canopypos z prepend from entity @s Pos[2]
execute as @e[tag=BluePlatform,scores={PlatTime=1},type=area_effect_cloud] run scoreboard players add @e[tag=Selection,type=armor_stand] canopyCount 1
#Teleporting happens in another function
execute if entity @e[tag=BluePlatform,type=area_effect_cloud,scores={PlatTime=..41}] run function everytick:canopy_tpblue
tag @e[tag=BluePlatform,type=area_effect_cloud] remove checkedTP
tag @a[team=Blue] remove checkedTP
execute as @a[team=Blue,tag=!teleported,tag=canopyTP] run effect clear @s slow_falling
execute as @a[team=Blue,tag=!teleported,tag=canopyTP] run effect clear @s slowness
execute as @a[team=Blue,tag=!teleported,tag=canopyTP] run effect clear @s jump_boost
tag @a[team=Blue,tag=!teleported] remove canopyTP
tag @a[team=Blue] remove teleported
execute as @e[tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,distance=..6] respawn 0
#After 2 seconds the Canopy gives up
scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=41},type=area_effect_cloud] pearlOwnerUUID

##More general Canopy functionalities
#Kill Canopy once it expires (includes hotfix for breaking the banners and pushing the log blocks to cheat auto-decay system
tag @e[scores={PlatTime=300..},type=area_effect_cloud] add killCanopy
execute as @e[tag=killCanopy,type=area_effect_cloud] at @s run scoreboard players add @s canopyExtraLogs 1
execute as @e[tag=killCanopy,scores={canopyExtraLogs=4..},type=area_effect_cloud] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace oak_wood
kill @e[tag=killCanopy,scores={canopyExtraLogs=4..},type=area_effect_cloud]

#Fire poofing
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~-1 ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~ ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~1 ~ ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~-1 ~ ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~ ~1 fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~ ~-1 fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~1 ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~1 ~1 ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~-1 ~1 ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~1 ~1 fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~1 ~-1 fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,scores={PlatTime=3..300},type=area_effect_cloud] at @s if block ~ ~2 ~ fire run tag @s add FirePoof
execute as @e[tag=!killCanopy,tag=FirePoof,type=area_effect_cloud] at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 2 0
execute as @e[tag=!killCanopy,tag=FirePoof,type=area_effect_cloud] at @s run playsound block.fire.ambient player @a ~ ~ ~ 2 2
execute as @e[tag=!killCanopy,tag=FirePoof,type=area_effect_cloud] at @s run fill ~ ~ ~ ~ ~1 ~ air destroy
execute as @e[tag=!killCanopy,tag=FirePoof,type=area_effect_cloud] at @s run fill ~-3 ~2 ~-3 ~3 ~1 ~3 fire replace air
execute as @e[tag=!killCanopy,tag=FirePoof,type=area_effect_cloud] at @s run particle flame ~ ~ ~ 2 0 2 0.15 250 force @a
execute as @e[tag=!killCanopy,tag=FirePoof,type=area_effect_cloud] at @s run particle lava ~ ~ ~ 2 0 2 0.1 20 force @a
execute as @e[tag=!killCanopy,tag=FirePoof,type=area_effect_cloud] at @s run particle explosion_emitter ~ ~ ~ 2 0 2 0.1 1 force @a
tag @e[tag=FirePoof,type=area_effect_cloud] add killCanopy

#Canopy durations
execute as @e[scores={PlatTime=4..},type=area_effect_cloud] at @s unless block ~ ~1 ~ oak_wood run tag @s add killCanopy
execute as @e[scores={PlatTime=4..},type=area_effect_cloud] at @s unless block ~ ~ ~ oak_wood run tag @s add killCanopy
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

#Fireballs poof Canopies
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] if entity @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] run tag @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] add FirePoof
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] if entity @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] run tag @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] add FirePoof
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace #minecraft:leaves
execute as @e[type=fireball] at @s unless entity @s[nbt={Motion:[0.0d, 0.0d, 0.0d]}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace oak_log

#Canopy watering (one time use - Splash extends Canopy duration)
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~ ~2 ~ water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~-1 ~2 ~ water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~1 ~2 ~ water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~ ~2 ~-1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~ ~2 ~1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~-1 ~2 ~-1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~1 ~2 ~-1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~1 ~2 ~1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~-1 ~2 ~1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~-1 ~1 ~-1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~1 ~1 ~-1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~1 ~1 ~1 water run tag @s add wateredInit
execute as @e[scores={PlatTime=3..300},tag=!watered,type=area_effect_cloud] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s if block ~-1 ~1 ~1 water run tag @s add wateredInit
execute as @e[tag=wateredInit,tag=!wateredTemp,type=area_effect_cloud] at @s run setblock ~ ~1 ~ sponge
execute as @e[tag=wateredInit,tag=!wateredTemp,type=area_effect_cloud] at @s run setblock ~ ~1 ~ oak_wood[axis=y]
execute as @e[tag=wateredInit,tag=!wateredTemp,type=area_effect_cloud] at @s run playsound minecraft:block.bamboo_sapling.place block @a ~ ~ ~ 1 0.5
execute as @e[tag=wateredInit,tag=!wateredTemp,type=area_effect_cloud] at @s run playsound minecraft:block.chorus_flower.grow block @a ~ ~ ~ 1 1
execute as @e[tag=wateredInit,tag=!wateredTemp,type=area_effect_cloud] at @s run playsound minecraft:entity.player.swim block @a ~ ~ ~ 1 1
execute as @e[tag=wateredInit,tag=!wateredTemp,type=area_effect_cloud] at @s run particle minecraft:falling_water ~ ~1 ~ 2 -1 2 1 600 force @a
execute as @e[tag=wateredInit,tag=!wateredTemp,type=area_effect_cloud] at @s run particle minecraft:happy_villager ~ ~1 ~ 2 -1 2 1 600 force @a
tag @e[tag=wateredInit,type=area_effect_cloud] add wateredTemp
scoreboard players remove @e[tag=animated,tag=wateredInit,type=area_effect_cloud] PlatTime 100
tag @e[tag=animated,tag=wateredInit,type=area_effect_cloud] add watered
tag @e[tag=watered,type=area_effect_cloud] remove wateredInit
tag @e[tag=watered,type=area_effect_cloud] remove wateredTemp