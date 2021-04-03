execute unless entity @e[tag=PUCrystal,limit=1] if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @a[team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run scoreboard players add @e[tag=captureMiddle] PowerupCrystal 1
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] unless entity @e[tag=captureMiddle,scores={PowerupCrystal=20..}] run scoreboard players add @e[tag=captureMiddle] PowerupCrystal 1

#Destroy platforms when not captured
execute if entity @e[tag=captureMiddle,scores={captureYellow=96}] run scoreboard players reset @e[tag=captureMiddle] PowerupCrystal
execute if entity @e[tag=captureMiddle,scores={captureYellow=96}] run fill 14 63 -68 10 66 -71 air destroy
execute if entity @e[tag=captureMiddle,scores={captureYellow=96}] positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 2 0
execute if entity @e[tag=captureMiddle,scores={captureYellow=96}] run kill @e[tag=PUCrystalDeco]

#Kill entities if someone left the platform
execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..}] unless entity @a[team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run kill @e[tag=PUCrystalDeco]
execute if entity @e[tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..}] unless entity @a[team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run scoreboard players set @e[tag=captureMiddle] PowerupCrystal 20
#Assemble platform - Blue
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=1}] run fill 14 63 -68 14 66 -68 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=1}] run fill 10 63 -68 10 66 -68 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=1}] run fill 11 63 -68 13 65 -68 minecraft:purple_stained_glass
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=1}] positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 0
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=1}] positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=1}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2

execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=2}] run setblock 11 66 -68 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=2}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=3}] run setblock 12 66 -68 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=3}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=4}] run setblock 13 66 -68 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=4}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=5}] run setblock 10 66 -69 obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=5}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=6}] run setblock 11 66 -69 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=6}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=7}] run setblock 12 66 -69 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=7}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=8}] run setblock 13 66 -69 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=8}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=9}] run setblock 14 66 -69 obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=9}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=10}] run setblock 10 66 -70 obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=10}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=11}] run setblock 11 66 -70 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=11}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=12}] run setblock 12 66 -70 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=12}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=13}] run setblock 13 66 -70 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=13}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=14}] run setblock 14 66 -70 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=14}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=15}] run setblock 10 66 -71 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=15}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=16}] run setblock 11 66 -71 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=16}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=17}] run setblock 12 66 -71 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=17}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=18}] run setblock 13 66 -71 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=18}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=19}] run setblock 14 66 -71 minecraft:obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=98..}] as @e[tag=captureMiddle,scores={PowerupCrystal=19}] positioned 12 66 -69 run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2

execute if entity @e[tag=captureMiddle,scores={captureYellow=20..,captureYellow=98..}] run fill 11 66 -68 13 66 -70 lodestone
execute if entity @e[tag=captureMiddle,scores={captureYellow=20..,captureYellow=98..}] if entity @e[tag=PUCrystal] run fill 10 63 -68 14 66 -71 minecraft:obsidian replace crying_obsidian
execute if entity @e[tag=captureMiddle,scores={captureYellow=20..,captureYellow=98..}] unless entity @e[tag=PUCrystal] run fill 10 63 -68 14 66 -71 minecraft:crying_obsidian replace obsidian

####

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=21}] run summon armor_stand 12 65.2 -70 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=21}] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.8

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25}] run summon armor_stand 11 65.2 -70 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25}] run summon armor_stand 13 65.2 -70 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25}] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.8

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30}] run summon armor_stand 11 65.2 -69 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30}] run summon armor_stand 13 65.2 -69 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30}] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.9

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35}] run summon armor_stand 11 65.2 -68 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35}] run summon armor_stand 13 65.2 -68 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35}] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=40}] run summon armor_stand 12 65.2 -69 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=40}] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.2

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=45}] run summon armor_stand 12 65.2 -68 {NoGravity:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1b}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=45}] positioned 12 66 -69 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.4

execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55}] run particle minecraft:end_rod 12 67 -69 1 0 1 0.1 100
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55}] positioned 12 66 -69 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 0.65
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55}] run kill @e[tag=PUCrystalDeco]
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55}] run summon minecraft:armor_stand 12 66.5 -69 {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["PUCrystalAS","NotSet","PUCrystalEntity"],Passengers:[{id:end_crystal,ShowBottom:0b,Invulnerable:1b,Tags:["NotSet","PUCrystal","PUCrystalEntity"]}]}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55}] run summon area_effect_cloud 12 55 -3 {Tags:["CrystalSpot","NotSet","PUCrystalEntity"],Duration:200}
execute as @e[tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55}] run scoreboard players set @s PowerupCrystal 20

execute as @e[tag=PUCrystalAS] at @s run particle end_rod ~ ~1.15 ~ 0 0 0 0.05 3 force
execute as @e[tag=PUCrystalAS] at @s run particle dragon_breath ~ ~1.15 ~ 0 0 0 0 1 force





execute as @e[tag=CrystalSpot,tag=NotSet] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @e[tag=CrystalSpot,tag=NotSet] at @s run tp @s ~ 54.5 ~
tag @e[tag=CrystalSpot,tag=NotSet] remove NotSet

execute as @e[tag=PUCrystalAS,tag=NotSet] at @s run tp @s ^ ^ ^0.5 facing entity @e[tag=CrystalSpot,limit=1,sort=nearest]

execute as @e[tag=PUCrystalAS,tag=NotSet] at @s if entity @e[tag=CrystalSpot,distance=..2,limit=1] run tag @e[tag=PUCrystal,limit=1,sort=nearest] add Set
execute as @e[tag=PUCrystalAS,tag=NotSet] at @s if entity @e[tag=CrystalSpot,distance=..2,limit=1] run kill @s
execute as @e[tag=PUCrystal,tag=Set] at @s run kill @e[tag=CrystalSpot,distance=..2,limit=1]
execute as @e[tag=PUCrystal,tag=Set] at @s run summon end_crystal ~ ~ ~ {ShowBottom:0b,Tags:["PUCrystal","PUCrystalEntity"]}
kill @e[tag=PUCrystal,tag=Set]