execute unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] if entity @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=20..},type=area_effect_cloud,limit=1] as @a[team=Yellow,predicate=rr_powerups:oncrystalyellow,limit=1] run scoreboard players add @e[tag=captureMiddle,type=area_effect_cloud,limit=1] PowerupCrystal 1
execute as @e[tag=captureMiddle,scores={captureBlue=98..},type=area_effect_cloud,limit=1] unless entity @s[scores={PowerupCrystal=20..}] run scoreboard players add @s PowerupCrystal 1

#Destroy platforms when not captured
scoreboard players reset @e[tag=captureMiddle,scores={captureBlue=96},type=area_effect_cloud,limit=1] PowerupCrystal
execute if entity @e[tag=captureMiddle,scores={captureBlue=96},type=area_effect_cloud,limit=1] run fill 14 63 68 10 66 72 air destroy
execute if entity @e[tag=captureMiddle,scores={captureBlue=96},type=area_effect_cloud,limit=1] run fill 14 63 67 10 63 67 air destroy
execute if entity @e[tag=captureMiddle,scores={captureBlue=96},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 2 0
execute if entity @e[tag=captureMiddle,scores={captureBlue=96},type=area_effect_cloud,limit=1] run kill @e[tag=PUCrystalDeco,type=armor_stand]
execute if entity @e[tag=captureMiddle,scores={captureBlue=..96},type=area_effect_cloud,limit=1] run fill 13 65 67 11 65 67 obsidian
execute if entity @e[tag=captureMiddle,scores={captureBlue=..96},type=area_effect_cloud,limit=1] run setblock 12 66 67 obsidian
execute if entity @e[tag=captureMiddle,scores={captureBlue=..96},type=area_effect_cloud,limit=1] run fill 11 64 67 13 64 67 obsidian

#Kill entities if someone left the platform
execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureBlue=98..},type=area_effect_cloud,limit=1] unless entity @a[team=Yellow,predicate=rr_powerups:oncrystalyellow,limit=1] run kill @e[tag=PUCrystalDeco,type=armor_stand]
execute as @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureBlue=98..},type=area_effect_cloud,limit=1] unless entity @a[team=Yellow,predicate=rr_powerups:oncrystalyellow,limit=1] run scoreboard players set @s PowerupCrystal 20

#Assemble platform - Yellow TODO CHANGE FOR NEW DESIGN
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},type=area_effect_cloud,limit=1] run fill 10 63 68 10 66 68 obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},type=area_effect_cloud,limit=1] run fill 14 63 68 14 66 68 obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},type=area_effect_cloud,limit=1] run fill 13 63 68 11 65 67 purple_stained_glass replace air
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 0
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
#
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=2,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 11 66 68 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=2,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 12 66 68 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=3,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=4,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 13 66 68 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=4,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 10 66 69 obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=5,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=6,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 11 66 69 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=6,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 12 66 69 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=7,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=8,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 13 66 69 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=8,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 14 66 69 obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=9,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=10,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 10 66 70 obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=10,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=11,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 11 66 70 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=11,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=12,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 12 66 70 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=12,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 13 66 70 lodestone
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=13,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=14,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 14 66 70 minecraft:obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=14,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=15,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 10 66 71 minecraft:obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=15,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=16,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 11 66 71 minecraft:obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=16,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=17,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 12 66 71 minecraft:obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=17,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=18,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 13 66 71 minecraft:obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=18,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=19,captureBlue=98..},type=area_effect_cloud,limit=1] run setblock 14 66 71 minecraft:obsidian
# execute as @e[tag=captureMiddle,scores={PowerupCrystal=19,captureBlue=98..},type=area_effect_cloud,limit=1] positioned 12 66 69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2

# pad is indestructible
execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureBlue=98..},type=area_effect_cloud,limit=1] run function rr_powerups:everytick/crystalpadyellow_place

####

execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=21},type=area_effect_cloud,limit=1] run summon armor_stand 12 62.2 71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=21},type=area_effect_cloud,limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.8

execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=25},type=area_effect_cloud,limit=1] run summon armor_stand 11 62.2 71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=25},type=area_effect_cloud,limit=1] run summon armor_stand 13 62.2 71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=25},type=area_effect_cloud,limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.8

execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=30},type=area_effect_cloud,limit=1] run summon armor_stand 11 62.2 70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=30},type=area_effect_cloud,limit=1] run summon armor_stand 13 62.2 70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=30},type=area_effect_cloud,limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.9

execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=35},type=area_effect_cloud,limit=1] run summon armor_stand 11 62.2 69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=35},type=area_effect_cloud,limit=1] run summon armor_stand 13 62.2 69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=35},type=area_effect_cloud,limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1

execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=40},type=area_effect_cloud,limit=1] run summon armor_stand 12 62.2 69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=40},type=area_effect_cloud,limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.4

# execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=45},type=area_effect_cloud,limit=1] run summon armor_stand 12 62.2 70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=45},type=area_effect_cloud,limit=1] run setblock 12 63 70 end_portal_frame[facing=north,eye=true]
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=45},type=area_effect_cloud,limit=1] positioned 12 64 70 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.2

execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run setblock 12 63 70 end_portal_frame[facing=north,eye=false]
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run particle minecraft:end_rod 12 65 70 1 0 1 0.1 100
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] positioned 12 64 70 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 0.65
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run kill @e[tag=PUCrystalDeco,type=armor_stand]
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run summon armor_stand 12 63.5 70 {Marker:1b,Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["PUCrystalAS","NotSet","PUCrystalEntity"],Passengers:[{id:end_crystal,ShowBottom:0b,Invulnerable:1b,Tags:["NotSet","PUCrystal","PUCrystalEntity"]}]}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run summon area_effect_cloud 12 55 0 {Tags:["YellowCrystalSpot","NotSet","PUCrystalEntity"],Duration:400}
execute as @e[tag=captureMiddle,scores={captureBlue=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run scoreboard players set @s PowerupCrystal 20

execute as @e[tag=PUCrystalAS,type=armor_stand,limit=1] at @s run particle end_rod ~ ~1.15 ~ 0 0 0 0.05 3 force
execute as @e[tag=PUCrystalAS,type=armor_stand,limit=1] at @s run particle dragon_breath ~ ~1.15 ~ 0 0 0 0 1 force





execute as @e[tag=YellowCrystalSpot,tag=NotSet,type=area_effect_cloud,limit=1] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @e[tag=YellowCrystalSpot,tag=NotSet,type=area_effect_cloud,limit=1] at @s run tp @s ~ 54.5 ~
tag @e[tag=YellowCrystalSpot,tag=NotSet,type=area_effect_cloud,limit=1] remove NotSet

execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1] run scoreboard players add @s PowerupCrystal 1
execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1,scores={PowerupCrystal=1..15}] at @s run tp @s ~ ~0.25 ~
execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1,scores={PowerupCrystal=16..30}] at @s run tp @s ~ ~0.15 ~
execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1] at @s run tp @s ^ ^ ^1 facing entity @e[tag=YellowCrystalSpot,type=area_effect_cloud,limit=1,sort=nearest]

execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1] at @s if entity @e[tag=YellowCrystalSpot,distance=..0.5,type=area_effect_cloud,limit=1] run tag @e[tag=PUCrystal,type=end_crystal,limit=1,sort=nearest] add Set
execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1] at @s if entity @e[tag=YellowCrystalSpot,distance=..0.5,type=area_effect_cloud,limit=1] run kill @s
execute as @e[tag=PUCrystal,tag=Set,type=end_crystal,limit=1] at @s run kill @e[tag=YellowCrystalSpot,distance=..0.5,type=area_effect_cloud,limit=1]
execute as @e[tag=PUCrystal,tag=Set,type=end_crystal,limit=1] at @s run summon end_crystal ~ ~ ~ {ShowBottom:0b,Tags:["PUCrystal","PUCrystalEntity"]}
kill @e[tag=PUCrystal,tag=Set,type=end_crystal,limit=1]