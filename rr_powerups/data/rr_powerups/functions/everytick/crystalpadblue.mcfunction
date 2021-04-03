execute unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] if entity @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=20..},type=area_effect_cloud,limit=1] as @a[team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run scoreboard players add @e[tag=captureMiddle,type=area_effect_cloud,limit=1] PowerupCrystal 1
execute as @e[tag=captureMiddle,scores={captureYellow=98..},type=area_effect_cloud,limit=1] unless entity @s[scores={PowerupCrystal=20..}] run scoreboard players add @s PowerupCrystal 1

#Destroy platforms when not captured
execute if entity @e[tag=captureMiddle,scores={captureYellow=96},type=area_effect_cloud,limit=1] run scoreboard players reset @e[tag=captureMiddle,type=area_effect_cloud,limit=1] PowerupCrystal
execute if entity @e[tag=captureMiddle,scores={captureYellow=96},type=area_effect_cloud,limit=1] run fill 14 63 -68 10 66 -71 air destroy
execute if entity @e[tag=captureMiddle,scores={captureYellow=96},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 2 0
execute if entity @e[tag=captureMiddle,scores={captureYellow=96},type=area_effect_cloud,limit=1] run kill @e[tag=PUCrystalDeco,type=armor_stand]

#Kill entities if someone left the platform
execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},type=area_effect_cloud,limit=1] unless entity @a[team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run kill @e[tag=PUCrystalDeco,type=armor_stand]
execute as @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},type=area_effect_cloud,limit=1] unless entity @a[team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run scoreboard players set @s PowerupCrystal 20

#Assemble platform - Blue
execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},type=area_effect_cloud,limit=1] run fill 14 63 -68 14 66 -68 obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},type=area_effect_cloud,limit=1] run fill 10 63 -68 10 66 -68 obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},type=area_effect_cloud,limit=1] run fill 11 63 -68 13 65 -68 purple_stained_glass
execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 0
execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2

execute as @e[tag=captureMiddle,scores={PowerupCrystal=2,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 11 66 -68 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=2,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 12 66 -68 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=4,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 13 66 -68 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=4,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 10 66 -69 obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=6,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 11 66 -69 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=6,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 12 66 -69 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=8,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 13 66 -69 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=8,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 14 66 -69 obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=10,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 10 66 -70 obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=10,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=11,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 11 66 -70 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=11,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=12,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 12 66 -70 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=12,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 13 66 -70 lodestone
execute as @e[tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=14,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 14 66 -70 minecraft:obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=14,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=15,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 10 66 -71 minecraft:obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=15,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=16,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 11 66 -71 minecraft:obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=16,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=17,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 12 66 -71 minecraft:obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=17,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=18,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 13 66 -71 minecraft:obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=18,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute as @e[tag=captureMiddle,scores={PowerupCrystal=19,captureYellow=98..},type=area_effect_cloud,limit=1] run setblock 14 66 -71 minecraft:obsidian
execute as @e[tag=captureMiddle,scores={PowerupCrystal=19,captureYellow=98..},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2

execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},type=area_effect_cloud,limit=1] run fill 11 66 -68 13 66 -70 lodestone
execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},type=area_effect_cloud,limit=1] if entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 10 63 -68 14 66 -71 obsidian replace crying_obsidian
execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},type=area_effect_cloud,limit=1] unless entity @e[tag=PUCrystal,type=end_crystal,limit=1] run fill 10 63 -68 14 66 -71 crying_obsidian replace obsidian

####

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=21},type=area_effect_cloud,limit=1] run summon armor_stand 12 65.2 -70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=21},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.8

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25},type=area_effect_cloud,limit=1] run summon armor_stand 11 65.2 -70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25},type=area_effect_cloud,limit=1] run summon armor_stand 13 65.2 -70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.8

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30},type=area_effect_cloud,limit=1] run summon armor_stand 11 65.2 -69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30},type=area_effect_cloud,limit=1] run summon armor_stand 13 65.2 -69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.9

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35},type=area_effect_cloud,limit=1] run summon armor_stand 11 65.2 -68 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35},type=area_effect_cloud,limit=1] run summon armor_stand 13 65.2 -68 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=40},type=area_effect_cloud,limit=1] run summon armor_stand 12 65.2 -69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=40},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.2

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=45},type=area_effect_cloud,limit=1] run summon armor_stand 12 65.2 -68 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=45},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.4

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run particle minecraft:end_rod 12 67 -69 1 0 1 0.1 100
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] positioned 12 66 -69 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 0.65
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run kill @e[tag=PUCrystalDeco,type=armor_stand]
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run summon minecraft:armor_stand 12 66.5 -69 {Marker:1b,Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["PUCrystalAS","NotSet","PUCrystalEntity"],Passengers:[{id:end_crystal,ShowBottom:0b,Invulnerable:1b,Tags:["NotSet","PUCrystal","PUCrystalEntity"]}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run summon area_effect_cloud 12 55 0 {Tags:["BlueCrystalSpot","NotSet","PUCrystalEntity"],Duration:400}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},type=area_effect_cloud,limit=1] run scoreboard players set @s PowerupCrystal 20

execute as @e[tag=PUCrystalAS,type=armor_stand,limit=1] at @s run particle end_rod ~ ~1.15 ~ 0 0 0 0.05 3 force
execute as @e[tag=PUCrystalAS,type=armor_stand,limit=1] at @s run particle dragon_breath ~ ~1.15 ~ 0 0 0 0 1 force





execute as @e[tag=BlueCrystalSpot,tag=NotSet,type=area_effect_cloud,limit=1] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @e[tag=BlueCrystalSpot,tag=NotSet,type=area_effect_cloud,limit=1] at @s run tp @s ~ 54.5 ~
tag @e[tag=BlueCrystalSpot,tag=NotSet,type=area_effect_cloud,limit=1] remove NotSet

execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1] at @s run tp @s ^ ^ ^1 facing entity @e[tag=BlueCrystalSpot,type=area_effect_cloud,limit=1,sort=nearest]

execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1] at @s if entity @e[tag=BlueCrystalSpot,distance=..0.5,type=area_effect_cloud,limit=1] run tag @e[tag=PUCrystal,type=end_crystal,limit=1,sort=nearest] add Set
execute as @e[tag=PUCrystalAS,tag=NotSet,type=armor_stand,limit=1] at @s if entity @e[tag=BlueCrystalSpot,distance=..0.5,type=area_effect_cloud,limit=1] run kill @s
execute as @e[tag=PUCrystal,tag=Set,type=end_crystal,limit=1] at @s run kill @e[tag=BlueCrystalSpot,distance=..0.5,type=area_effect_cloud,limit=1]
execute as @e[tag=PUCrystal,tag=Set,type=end_crystal,limit=1] at @s run summon end_crystal ~ ~ ~ {ShowBottom:0b,Tags:["PUCrystal","PUCrystalEntity"]}
kill @e[tag=PUCrystal,tag=Set,type=end_crystal,limit=1]