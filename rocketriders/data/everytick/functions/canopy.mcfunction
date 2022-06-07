#######################################
## CANOPY: A temporary leaf platform ##
## Used for quick long-range travel  ##
#######################################

##General Canopy functionality
#Canopy quick deploy when near the base of its own team color
execute as @e[type=marker,tag=BluePlatform,scores={PlatTime=..57},tag=!waterTemp,tag=!animated] at @s if predicate custom:canopy_nearblue run scoreboard players add @s PlatTime 3
execute as @e[type=marker,tag=YellowPlatform,scores={PlatTime=..57},tag=!waterTemp,tag=!animated] at @s if predicate custom:canopy_nearyellow run scoreboard players add @s PlatTime 3

#Canopy deploy animation/sounds
tag @e[type=marker,scores={PlatTime=1..58},tag=killCanopy,tag=!animated] add animated
execute as @e[type=marker,scores={PlatTime=1..50},tag=!animated] at @s run particle block spruce_leaves ~ ~ ~ 1 0 1 0.1 10
execute as @e[type=marker,scores={PlatTime=1},tag=!animated] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[type=marker,scores={PlatTime=5..},tag=!animated,tag=!killCanopy] at @s run setblock ~ ~ ~ oak_wood[axis=y]
execute as @e[type=marker,scores={PlatTime=5..},tag=!animated,tag=!killCanopy] at @s run setblock ~ ~ ~-1 spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=5..},tag=!animated,tag=!killCanopy] at @s run setblock ~ ~ ~1 spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=5},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[type=marker,scores={PlatTime=10..},tag=!animated,tag=!killCanopy] at @s run setblock ~ ~ ~-2 birch_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=10..},tag=!animated,tag=!killCanopy] at @s run setblock ~ ~ ~2 birch_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=10},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 2

execute as @e[type=marker,scores={PlatTime=15..},tag=!animated,tag=!killCanopy] at @s run setblock ~ ~ ~-3 jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=15..},tag=!animated,tag=!killCanopy] at @s run setblock ~ ~ ~3 jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=15},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[type=marker,scores={PlatTime=20..},tag=!animated,tag=!killCanopy] at @s run setblock ~1 ~ ~-1 jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=20..},tag=!animated,tag=!killCanopy] at @s run setblock ~1 ~ ~-2 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=20..},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~1 jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=20..},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~2 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=20},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[type=marker,scores={PlatTime=25..},tag=!animated,tag=!killCanopy] at @s run setblock ~1 ~ ~ spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=25..},tag=!animated,tag=!killCanopy] at @s run setblock ~2 ~ ~ birch_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=25..},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~ spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=25..},tag=!animated,tag=!killCanopy] at @s run setblock ~-2 ~ ~ birch_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=25..},tag=!animated,tag=!killCanopy] at @s run setblock ~1 ~ ~-3 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=25..},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~3 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=25},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[type=marker,scores={PlatTime=30..},tag=!animated,tag=!killCanopy] at @s run setblock ~1 ~ ~1 jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=30..},tag=!animated,tag=!killCanopy] at @s run setblock ~2 ~ ~1 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=30..},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=30..},tag=!animated,tag=!killCanopy] at @s run setblock ~-2 ~ ~-1 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=30},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[type=marker,scores={PlatTime=35..},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~-2 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=35..},tag=!animated,tag=!killCanopy] at @s run setblock ~1 ~ ~2 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=35},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[type=marker,scores={PlatTime=40..},tag=!animated,tag=!killCanopy] at @s run setblock ~2 ~ ~-1 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=40..},tag=!animated,tag=!killCanopy] at @s run setblock ~-2 ~ ~1 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=40},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 1

execute as @e[type=marker,scores={PlatTime=45..},tag=!animated,tag=!killCanopy] at @s run setblock ~2 ~ ~-2 spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=45..},tag=!animated,tag=!killCanopy] at @s run setblock ~-2 ~ ~2 spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=45},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6

execute as @e[type=marker,scores={PlatTime=50..},tag=!animated,tag=!killCanopy] at @s run setblock ~2 ~ ~2 spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=50..},tag=!animated,tag=!killCanopy] at @s run setblock ~-2 ~ ~-2 spruce_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=50..},tag=!animated,tag=!killCanopy] at @s run setblock ~3 ~ ~-1 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=50..},tag=!animated,tag=!killCanopy] at @s run setblock ~-3 ~ ~1 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=50},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0.6

execute as @e[type=marker,scores={PlatTime=55..},tag=!animated,tag=!killCanopy] at @s run setblock ~1 ~ ~3 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=55..},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~-3 oak_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=55..},tag=!animated,tag=!killCanopy] at @s run setblock ~3 ~ ~ jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=55..},tag=!animated,tag=!killCanopy] at @s run setblock ~-3 ~ ~ jungle_leaves[persistent=true] replace
execute as @e[type=marker,scores={PlatTime=55},tag=!animated,tag=!killCanopy] at @s run playsound block.grass.break master @a ~ ~ ~ 2 0

execute as @e[type=marker,scores={PlatTime=56},tag=!animated,tag=!killCanopy] at @s run setblock ~3 ~ ~1 oak_leaves[persistent=true]
execute as @e[type=marker,scores={PlatTime=56},tag=!animated,tag=!killCanopy] at @s run setblock ~-3 ~ ~-1 oak_leaves[persistent=true]
execute as @e[type=marker,scores={PlatTime=56},tag=!animated,tag=!killCanopy] at @s run particle block spruce_leaves ~ ~2 ~ 1 1 1 1 300

execute as @e[type=marker,scores={PlatTime=58},tag=!animated,tag=!killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute as @e[type=marker,scores={PlatTime=58},tag=!animated,tag=!killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute as @e[type=marker,scores={PlatTime=58},tag=!animated,tag=!killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute as @e[type=marker,scores={PlatTime=58},tag=!animated,tag=!killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute as @e[type=marker,scores={PlatTime=58},tag=!animated,tag=!killCanopy] at @s run setblock ~-1 ~ ~-1 jungle_leaves[persistent=false,distance=1]

tag @e[type=marker,scores={PlatTime=58..}] add animated

#Ender Pearl UUID storage and owner detection - necessary for accurate teleports
execute as @e[type=ender_pearl] store result score @s pearlOwnerUUID run data get entity @s Owner[0]
execute as @e[type=ender_pearl,tag=!BluePlat,tag=!YellowPlat] run function everytick:canopy_owner
execute as @e[type=ender_pearl] run function everytick:canopy_pearl

##Yellow Canopy functionality
execute as @e[type=ender_pearl,tag=YellowPlat] at @s run particle dust 1 2 0 1 ~ ~ ~ 0 0 0 0.1 10 force @a[predicate=custom:belowroof]
execute as @e[type=ender_pearl,tag=YellowPlat] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a[predicate=custom:belowroof]
execute as @e[type=ender_pearl,tag=YellowPlat] at @s run scoreboard players add @s testplat 1
#Next 4 commands disable Yellow Canopies inside of portals
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat 1
execute unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat 2
#Disable Yellow Canopies near void
execute as @e[type=ender_pearl,scores={testplat=9..10}] at @s if predicate custom:canopy_nearvoid run scoreboard players remove @s testplat 1
#Disable Yellow Canopies near spawnpoints
execute as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..7] run scoreboard players remove @s testplat 1
execute as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..7] run scoreboard players remove @s testplat 1
execute as @e[type=ender_pearl,scores={testplat=10},predicate=!custom:canopy_nearvoid] at @s run function everytick:canopy_threw
execute as @e[type=ender_pearl,scores={testplat=10},predicate=!custom:canopy_nearvoid] at @s run place template yellowcanopy1 ~-1 ~ ~-1
execute as @e[type=ender_pearl,scores={testplat=10},predicate=!custom:canopy_nearvoid] at @s run playsound ui.stonecutter.take_result master @a ~ ~ ~ 2 0
execute as @e[type=ender_pearl,scores={testplat=10},predicate=!custom:canopy_nearvoid] at @s run playsound block.wood.break master @a ~ ~ ~ 2 1
execute as @e[type=ender_pearl,scores={testplat=10},predicate=!custom:canopy_nearvoid] at @s align xyz positioned ~0.5 ~ ~0.5 run function everytick:canopy_marker
scoreboard players add @e[type=marker,tag=YellowPlatform] PlatTime 1
kill @e[type=ender_pearl,scores={testplat=10..}]
execute as @e[type=marker,tag=YellowPlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos x prepend from entity @s Pos[0]
execute as @e[type=marker,tag=YellowPlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos y prepend from entity @s Pos[1]
execute as @e[type=marker,tag=YellowPlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos z prepend from entity @s Pos[2]
execute as @e[type=marker,tag=YellowPlatform,scores={PlatTime=1}] run scoreboard players add @e[type=armor_stand,tag=Selection] canopyCount 1
#Teleporting happens in another function
execute as @e[type=marker,tag=YellowPlatform,scores={PlatTime=..41}] run function everytick:canopy_tpyellow
tag @e[type=marker,tag=YellowPlatform] remove checkedTP
tag @a[team=Yellow] remove checkedTP
execute as @e[type=marker,tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,distance=..6] respawn 0
#After 2 seconds the Canopy gives up teleporting
scoreboard players reset @e[type=marker,tag=YellowPlatform,scores={PlatTime=41}] pearlOwnerUUID

##Blue Canopy functionality
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,tag=BluePlat] at @s run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a[predicate=custom:belowroof]
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,tag=BluePlat] at @s run particle block spruce_leaves ~ ~ ~ 0 0 0 0.1 2 force @a[predicate=custom:belowroof]
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,tag=BluePlat] at @s run scoreboard players add @s testplat2 1
#Next 4 commands disable Blue Canopies inside of portals
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s testplat2 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] unless entity @s[tag=noPortal] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s testplat2 2
#Disable Blue Canopies near void
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if predicate custom:canopy_nearvoid run scoreboard players remove @s testplat2 1
#Disable Blue Canopies near spawnpoints
execute as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..7] run scoreboard players remove @s testplat2 1
execute as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..7] run scoreboard players remove @s testplat2 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run function everytick:canopy_threw
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run place template bluecanopy1 ~-1 ~ ~-1
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run playsound ui.stonecutter.take_result master @a ~ ~ ~ 2 0
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run playsound block.wood.break master @a ~ ~ ~ 2 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s run playsound block.grass.place master @a ~ ~ ~ 2 0
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=ender_pearl,scores={testplat2=10},predicate=!custom:canopy_nearvoid] at @s align xyz positioned ~0.5 ~ ~0.5 run function everytick:canopy_marker
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] run scoreboard players add @e[type=marker,tag=BluePlatform] PlatTime 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] run kill @e[type=ender_pearl,scores={testplat2=10..}]
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos x prepend from entity @s Pos[0]
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos y prepend from entity @s Pos[1]
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run data modify storage rocketriders:canopypos z prepend from entity @s Pos[2]
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=marker,tag=BluePlatform,scores={PlatTime=1}] run scoreboard players add @e[type=armor_stand,tag=Selection] canopyCount 1
#Teleporting happens in another function
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=marker,tag=BluePlatform,scores={PlatTime=..41}] run function everytick:canopy_tpblue
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] run tag @e[type=marker,tag=BluePlatform] remove checkedTP
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] run tag @a[team=Blue] remove checkedTP
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] as @e[type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,distance=..6] respawn 0
#After 2 seconds the Canopy gives up
execute if entity @e[type=armor_stand,tag=Selection,tag=!customShield] run scoreboard players reset @e[type=marker,tag=BluePlatform,scores={PlatTime=41}] pearlOwnerUUID

##More general Canopy functionalities
#Kill Canopy once it expires or when tnt gets near it (includes hotfix for breaking the banners and pushing the log blocks to cheat auto-decay system
execute as @e[type=marker,tag=BluePlatform] at @s if entity @e[type=tnt,nbt={Fuse:1s},distance=..7] run tag @s add killCanopy
execute as @e[type=marker,tag=YellowPlatform] at @s if entity @e[type=tnt,nbt={Fuse:1s},distance=..7] run tag @s add killCanopy
tag @e[type=marker,scores={PlatTime=300..}] add killCanopy
execute as @e[type=marker,tag=killCanopy] at @s run scoreboard players add @s canopyExtraLogs 1
#Hotfix for persistent leaves
execute as @e[type=marker,tag=killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute as @e[type=marker,tag=killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute as @e[type=marker,tag=killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute as @e[type=marker,tag=killCanopy] at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute as @e[type=marker,tag=killCanopy] at @s if block ~ ~ ~ oak_wood run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=killCanopy] at @s if block ~ ~1 ~ oak_wood run setblock ~ ~1 ~ air destroy
execute as @e[type=marker,tag=killCanopy] at @s if block ~1 ~1 ~ #minecraft:banners run setblock ~1 ~1 ~ air destroy
execute as @e[type=marker,tag=killCanopy] at @s if block ~-1 ~1 ~ #minecraft:banners run setblock ~-1 ~1 ~ air destroy
execute as @e[type=marker,tag=killCanopy] at @s if block ~ ~1 ~1 #minecraft:banners run setblock ~ ~1 ~1 air destroy
execute as @e[type=marker,tag=killCanopy] at @s if block ~ ~1 ~-1 #minecraft:banners run setblock ~ ~1 ~-1 air destroy
execute as @e[type=marker,tag=killCanopy,scores={canopyExtraLogs=4..}] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace oak_wood
kill @e[type=marker,tag=killCanopy,scores={canopyExtraLogs=4..}]

#Canopy smoke when player on fire is nearby
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300}] at @s if entity @e[type=player,predicate=custom:is_on_fire,distance=..3] run scoreboard players add @s canopySmoke 2
scoreboard players remove @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=1..}] canopySmoke 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=1..}] at @s unless entity @e[type=player,predicate=custom:is_on_fire,distance=..3] run scoreboard players remove @s canopySmoke 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=1}] at @s run playsound block.campfire.ambient master @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=1}] at @s run particle minecraft:large_smoke ~ ~ ~ 1 0 1 0 100 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=7}] at @s run playsound block.fire.ambient player @a ~ ~ ~ 2 0.25
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=14}] at @s run playsound block.campfire.ambient master @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=14}] at @s run particle minecraft:large_smoke ~ ~ ~ 1 0 1 0 200 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=21}] at @s run playsound block.fire.ambient master @a ~ ~ ~ 2 0.5
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=21}] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1 -1 1 0.01 100 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=28}] at @s run playsound block.campfire.ambient master @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=28}] at @s run particle minecraft:large_smoke ~ ~ ~ 1.5 0 1.5 0 200 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=35}] at @s run playsound block.fire.ambient master @a ~ ~ ~ 2 0.75
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=35}] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1 -1 1 0.01 100 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=42}] at @s run playsound block.campfire.ambient player @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=42}] at @s run particle minecraft:large_smoke ~ ~ ~ 1.5 0 1.5 0.1 200 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=49}] at @s run playsound block.fire.ambient master @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=49}] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1.5 -1 1.5 0.01 200 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=56}] at @s run playsound block.campfire.ambient master @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=56}] at @s run particle minecraft:large_smoke ~ ~ ~ 2 0 2 0.1 200 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=63}] at @s run playsound block.fire.ambient master @a ~ ~ ~ 2 1.5
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=63}] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1.5 -1 1.5 0.01 200 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=70}] at @s run playsound block.campfire.ambient master @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=70}] at @s run particle minecraft:large_smoke ~ ~ ~ 2 0 2 0.1 300 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=77}] at @s run playsound block.fire.ambient master @a ~ ~ ~ 2 2
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=77}] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 -1 2 0.01 200 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,canopySmoke=80..}] run tag @s add FirePoof

#Fire poofing
execute as @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300}] at @s store result score @s CmdData run clone ~-1 ~-1 ~-1 ~1 ~2 ~1 ~-1 ~-1 ~-1 filtered fire force
tag @e[type=marker,tag=!killCanopy,scores={PlatTime=3..300,CmdData=1..}] add FirePoof
execute as @e[type=marker,tag=!killCanopy,tag=FirePoof,tag=!LavaPoof] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 2 0
execute as @e[type=marker,tag=!killCanopy,tag=FirePoof] at @s run playsound block.fire.ambient master @a ~ ~ ~ 2 2
execute as @e[type=marker,tag=!killCanopy,tag=FirePoof] at @s run fill ~ ~ ~ ~ ~1 ~ air destroy
execute as @e[type=marker,tag=!killCanopy,tag=FirePoof] at @s run fill ~-3 ~1 ~-3 ~3 ~1 ~3 fire replace #custom:air
execute as @e[type=marker,tag=!killCanopy,tag=FirePoof] at @s run particle flame ~ ~ ~ 2 0 2 0.15 250 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,tag=FirePoof] at @s run particle lava ~ ~ ~ 2 0 2 0.1 20 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=!killCanopy,tag=FirePoof] at @s run particle explosion_emitter ~ ~ ~ 2 0 2 0.1 1 force @a[predicate=custom:belowroof]
tag @e[type=marker,tag=FirePoof] add killCanopy

#Canopy durations
execute as @e[type=marker,scores={PlatTime=4..}] at @s unless block ~ ~1 ~ oak_wood run tag @s add killCanopy
execute as @e[type=marker,scores={PlatTime=4..}] at @s unless block ~ ~ ~ oak_wood run tag @s add killCanopy
execute as @e[type=marker,scores={PlatTime=220..}] at @s run particle block oak_wood ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a[predicate=custom:belowroof]
execute as @e[type=marker,scores={PlatTime=220}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0
execute as @e[type=marker,scores={PlatTime=225}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0
execute as @e[type=marker,scores={PlatTime=230}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0
execute as @e[type=marker,scores={PlatTime=235}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0
execute as @e[type=marker,scores={PlatTime=240}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.4
execute as @e[type=marker,scores={PlatTime=245}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.5
execute as @e[type=marker,scores={PlatTime=250}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.6
execute as @e[type=marker,scores={PlatTime=255}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.7
execute as @e[type=marker,scores={PlatTime=260}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.8
execute as @e[type=marker,scores={PlatTime=265}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.9
execute as @e[type=marker,scores={PlatTime=270}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 1
execute as @e[type=marker,scores={PlatTime=275}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 1.2
execute as @e[type=marker,scores={PlatTime=280}] at @s run playsound block.wood.break master @a ~ ~ ~ 2 1.5
execute as @e[type=marker,scores={PlatTime=300}] at @s run particle block oak_wood ~ ~1 ~ 0.5 0.5 0.5 1 100 force @a[predicate=custom:belowroof]

#Canopy watering (one time use - Splash extends Canopy duration)
execute as @e[type=marker,scores={PlatTime=3..300},tag=!watered] unless entity @s[tag=!YellowPlatform,tag=!BluePlatform] at @s store result score @s CmdData run clone ~-2 ~-1 ~-2 ~2 ~2 ~2 ~-2 ~-1 ~-2 filtered water force
tag @e[type=marker,scores={PlatTime=3..300,CmdData=1..},tag=!watered] add wateredInit
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run setblock ~ ~1 ~ sponge
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace water
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run setblock ~ ~1 ~ oak_wood[axis=y]
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run playsound minecraft:block.bamboo_sapling.place master @a ~ ~ ~ 1 0.5
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run playsound minecraft:block.chorus_flower.grow master @a ~ ~ ~ 1 1
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run playsound minecraft:entity.player.swim master @a ~ ~ ~ 1 1
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run particle minecraft:falling_water ~ ~1 ~ 2 -1 2 1 600 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=wateredInit,tag=!wateredTemp] at @s run particle minecraft:happy_villager ~ ~1 ~ 2 -1 2 1 600 force @a[predicate=custom:belowroof]
tag @e[type=marker,tag=wateredInit] add wateredTemp
scoreboard players remove @e[type=marker,tag=animated,tag=wateredInit] PlatTime 200
tag @e[type=marker,tag=animated,tag=wateredInit] add watered
tag @e[type=marker,tag=watered] remove wateredInit
tag @e[type=marker,tag=watered] remove wateredTemp

#Canopy lava poof
execute as @e[type=marker,scores={PlatTime=3..300}] at @s store result score @s CmdData run clone ~-3 ~-1 ~-3 ~3 ~2 ~3 ~-3 ~-1 ~-3 filtered lava force
tag @e[type=marker,scores={PlatTime=3..300,CmdData=1..}] add LavaPoof
execute as @e[type=marker,tag=LavaPoof,tag=!FirePoof] at @s run particle lava ~ ~1 ~ 2 0.1 2 2 50 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=LavaPoof,tag=!FirePoof] at @s run particle minecraft:falling_lava ~ ~-1 ~ 2 1 2 0.1 50 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=LavaPoof,tag=!FirePoof] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1 1 1 0.5 40 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=LavaPoof,tag=!FirePoof] at @s run playsound minecraft:block.lava.pop master @a ~ ~ ~ 1 0.7
execute as @e[type=marker,tag=LavaPoof,tag=!FirePoof] at @s run playsound minecraft:block.lava.pop master @a ~ ~ ~ 1 0.9
execute as @e[type=marker,tag=LavaPoof,tag=!FirePoof] at @s run playsound minecraft:item.bucket.empty_lava master @a ~ ~ ~ 2 0.8
execute as @e[type=marker,tag=LavaPoof] run tag @s add FirePoof