execute unless entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=20..},limit=1] as @a[x=0,team=Yellow,predicate=rr_powerups:oncrystalyellow,limit=1] run scoreboard players add @e[x=0,type=marker,tag=captureMiddle,limit=1] PowerupCrystal 1
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] unless entity @s[scores={PowerupCrystal=20..}] run scoreboard players add @s PowerupCrystal 1

#Destroy platforms when not captured
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96,capturePoint=1},limit=1] run tp @a[x=0,team=Yellow,predicate=rr_powerups:oncrystalyellow] 12 64 66 -180 0
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96,capturePoint=1},limit=1] as @a[team=Yellow] at @s run playsound minecraft:entity.ender_eye.death master @s
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96,capturePoint=1},limit=1] run tellraw @a[team=Yellow] {"text":"Crystal Crafter Deactivated!","color":"red","bold":true}
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96},limit=1] PowerupCrystal
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96,capturePoint=1},limit=1] run fill 14 63 68 10 66 72 air destroy
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96,capturePoint=1},limit=1] run fill 14 63 67 10 63 67 air destroy
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96,capturePoint=1},limit=1] positioned 12 66 69 run playsound minecraft:block.respawn_anchor.deplete master @a[x=0] ~ ~ ~ 2 0
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=96,capturePoint=1},limit=1] run kill @e[x=0,type=armor_stand,tag=PUCrystalDeco]
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=..92},limit=1] run setblock 12 66 67 obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=..94},limit=1] run fill 13 65 67 11 65 67 obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=..96},limit=1] run fill 11 64 67 13 64 67 obsidian

#Kill entities if someone left the platform
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=20..,captureBlue=98..},limit=1] unless entity @a[x=0,team=Yellow,predicate=rr_powerups:oncrystalyellow,limit=1] run kill @e[x=0,type=armor_stand,tag=PUCrystalDeco]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=20..,captureBlue=98..},limit=1] unless entity @a[x=0,team=Yellow,predicate=rr_powerups:oncrystalyellow,limit=1] run scoreboard players set @s PowerupCrystal 20

#Assemble platform - Yellow
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] run setblock 12 63 67 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] run setblock 13 63 67 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] run setblock 11 63 67 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] run setblock 14 63 67 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] run setblock 10 63 67 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] run fill 11 64 67 13 64 67 air destroy
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 0
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.respawn_anchor.charge master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
#
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=2,captureBlue=98..},limit=1] run setblock 12 63 68 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=2,captureBlue=98..},limit=1] run setblock 11 63 69 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=2,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},limit=1] run fill 11 65 67 13 65 67 air destroy
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},limit=1] run setblock 12 63 69 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},limit=1] run setblock 13 63 68 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},limit=1] run setblock 11 63 68 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},limit=1] run fill 14 63 68 14 65 68 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},limit=1] run fill 10 63 68 10 65 68 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=4,captureBlue=98..},limit=1] run setblock 13 63 69 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=4,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] run fill 12 66 67 12 66 67 air destroy
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] run setblock 14 63 69 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] run setblock 10 63 69 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] run setblock 14 64 69 magenta_stained_glass_pane[north=true,south=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] run setblock 14 65 69 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] run setblock 10 64 69 magenta_stained_glass_pane[north=true,south=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] run setblock 10 65 69 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=6,captureBlue=98..},limit=1] run setblock 11 63 70 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=6,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] run setblock 12 63 70 end_portal_frame[facing=north]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] run setblock 14 63 70 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] run setblock 10 63 70 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] run setblock 14 64 70 magenta_stained_glass_pane[north=true,south=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] run setblock 14 65 70 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] run setblock 10 64 70 magenta_stained_glass_pane[north=true,south=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] run setblock 10 65 70 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=8,captureBlue=98..},limit=1] run setblock 13 63 70 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=8,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},limit=1] run setblock 14 63 71 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},limit=1] run setblock 10 63 71 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},limit=1] run setblock 14 64 71 magenta_stained_glass_pane[north=true,south=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},limit=1] run setblock 14 65 71 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},limit=1] run setblock 10 64 71 magenta_stained_glass_pane[north=true,south=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},limit=1] run setblock 10 65 71 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=10,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureBlue=98..},limit=1] run setblock 11 63 71 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureBlue=98..},limit=1] run fill 14 63 72 14 65 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureBlue=98..},limit=1] run fill 10 63 72 10 65 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=12,captureBlue=98..},limit=1] run setblock 12 63 71 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=12,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] run setblock 13 63 71 netherite_block
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] run setblock 13 63 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] run setblock 11 63 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] run setblock 13 64 72 magenta_stained_glass_pane[east=true,west=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] run setblock 11 64 72 magenta_stained_glass_pane[east=true,west=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] run fill 13 65 72 13 66 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] run fill 11 65 72 11 66 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=14,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureBlue=98..},limit=1] run setblock 12 63 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureBlue=98..},limit=1] run fill 12 64 72 12 65 72 magenta_stained_glass_pane[east=true,west=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureBlue=98..},limit=1] run setblock 12 66 72 obsidian
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=16,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=17,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=18,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=19,captureBlue=98..},limit=1] positioned 12 63 70 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 2 2

execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=19,captureBlue=98..},limit=1] as @a[team=Yellow] at @s run playsound minecraft:entity.ender_eye.death master @s
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=19,captureBlue=98..},limit=1] run tellraw @a[team=Yellow] {"text":"Crystal Crafter Activated!","color":"dark_purple","bold":true}
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=19,captureBlue=98..},limit=1] run tellraw @a[team=Yellow] {"text":"Walk behind your spawnpoint and stand on the Crystal Crafter to send Crystals to the Powerups Platform.","color":"light_purple"}

# pad is indestructible
execute as @e[x=0,type=marker,tag=captureMiddle,scores={PowerupCrystal=20..,captureBlue=98..},limit=1] run function rr_powerups:everytick/crystalpadyellow_place

# place if crystal is present
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] if entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 11 63 67 11 63 68 obsidian replace crying_obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] if entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 67 13 63 68 obsidian replace crying_obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] if entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 14 63 69 14 63 71 obsidian replace crying_obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] if entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 10 63 69 10 63 71 obsidian replace crying_obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] if entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 72 11 63 72 obsidian replace crying_obsidian

# place unless crystal is present
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] unless entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 11 63 67 11 63 68 crying_obsidian replace obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] unless entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 67 13 63 68 crying_obsidian replace obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] unless entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 14 63 69 14 63 71 crying_obsidian replace obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] unless entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 10 63 69 10 63 71 crying_obsidian replace obsidian
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..},limit=1] unless entity @e[x=0,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 72 11 63 72 crying_obsidian replace obsidian

####

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=21},limit=1] run summon armor_stand 12 62.2 71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=21},limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a[x=0] ~ ~ ~ 2 0.8

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=25},limit=1] run summon armor_stand 11 62.2 71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=25},limit=1] run summon armor_stand 13 62.2 71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=25},limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a[x=0] ~ ~ ~ 2 0.8

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=30},limit=1] run summon armor_stand 11 62.2 70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=30},limit=1] run summon armor_stand 13 62.2 70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=30},limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a[x=0] ~ ~ ~ 2 0.9

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=35},limit=1] run summon armor_stand 11 62.2 69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=35},limit=1] run summon armor_stand 13 62.2 69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=35},limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a[x=0] ~ ~ ~ 2 1

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=40},limit=1] run summon armor_stand 12 62.2 69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",count:1}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=40},limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a[x=0] ~ ~ ~ 2 1.4

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=45},limit=1] run setblock 12 63 70 end_portal_frame[facing=north,eye=true]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=45},limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a[x=0] ~ ~ ~ 2 1.2

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},limit=1] run particle minecraft:end_rod 12 65 70 1 0 1 0.1 100
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},limit=1] positioned 12 64 70 run playsound minecraft:entity.shulker.shoot master @a[x=0] ~ ~ ~ 1 0.65
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},limit=1] run kill @e[x=0,type=armor_stand,tag=PUCrystalDeco]
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},limit=1] run summon armor_stand 12 63.5 70 {Marker:1b,Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["PUCrystalAS","NotSet","PUCrystalEntity"],Passengers:[{id:"end_crystal",ShowBottom:0b,Invulnerable:1b,Tags:["NotSet","PUCrystal","PUCrystalEntity"]}]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},limit=1] run summon marker 12 55 0 {Tags:["YellowCrystalSpot","NotSet","PUCrystalEntity"]}
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},limit=1] run scoreboard players set @s PowerupCrystal 20

execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,limit=1] at @s positioned ~ ~.25 ~3 if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^0.3 ^0.65 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,limit=1] at @s positioned ~ ~.25 ~3 if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^-0.3 ^0.65 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute as @e[x=0,type=marker,tag=PUCrystalAS] unless entity @e[x=0,type=end_crystal,tag=PUCrystal] run kill @s
execute as @e[x=0,type=marker,tag=YellowCrystalSpot] unless entity @e[x=0,type=end_crystal,tag=PUCrystal] run kill @s
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS] unless entity @e[x=0,type=marker,tag=YellowCrystalSpot] run kill @e[x=0,type=end_crystal,tag=PUCrystal]
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS] unless entity @e[x=0,type=marker,tag=YellowCrystalSpot] run kill @s


execute as @e[x=0,type=marker,tag=YellowCrystalSpot,tag=NotSet,limit=1] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @e[x=0,type=marker,tag=YellowCrystalSpot,tag=NotSet,limit=1] at @s run tp @s ~ 54.5 ~
tag @e[x=0,type=marker,tag=YellowCrystalSpot,tag=NotSet,limit=1] remove NotSet

execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] run scoreboard players add @s PowerupCrystal 1
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1,scores={PowerupCrystal=1..15}] at @s run tp @s ~ ~0.25 ~
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1,scores={PowerupCrystal=16..30}] at @s run tp @s ~ ~0.15 ~
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[type=marker,tag=YellowCrystalSpot,limit=1,sort=nearest,distance=10..] run tp @s ^ ^ ^1 facing entity @e[x=0,type=marker,tag=YellowCrystalSpot,limit=1,sort=nearest]
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[type=marker,tag=YellowCrystalSpot,limit=1,sort=nearest,distance=5..10] run tp @s ^ ^ ^0.75 facing entity @e[x=0,type=marker,tag=YellowCrystalSpot,limit=1,sort=nearest]
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[type=marker,tag=YellowCrystalSpot,limit=1,sort=nearest,distance=..5] run tp @s ^ ^ ^0.5 facing entity @e[x=0,type=marker,tag=YellowCrystalSpot,limit=1,sort=nearest]

execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[type=marker,tag=YellowCrystalSpot,distance=..0.5,limit=1] at @s run playsound minecraft:entity.ender_eye.death master @a[x=0] ~ ~ ~ 2 0.5
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[type=marker,tag=YellowCrystalSpot,distance=..0.5,limit=1] at @s run playsound minecraft:block.beacon.power_select master @a[x=0] ~ ~ ~ 2 1.6
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[type=marker,tag=YellowCrystalSpot,distance=..0.5,limit=1] run tag @e[x=0,type=end_crystal,tag=PUCrystal,limit=1,sort=nearest] add Set
execute as @e[x=0,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[type=marker,tag=YellowCrystalSpot,distance=..0.5,limit=1] run kill @s
scoreboard players add @e[x=0,type=end_crystal,tag=PUCrystal,tag=!PUCrystalPerma,tag=Set] PowerupCrystal 1
execute as @e[x=0,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}] at @s run kill @e[type=marker,tag=YellowCrystalSpot,distance=..0.5,limit=1]
execute as @e[x=0,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}] at @s run particle flash ~ ~ ~ 0 0 0 4 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}] at @s run summon end_crystal ~ ~ ~ {Invulnerable:1b,ShowBottom:0b,Tags:["PUCrystal","PUCrystalEntity","PUCrystalPerma"]}
kill @e[x=0,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}]