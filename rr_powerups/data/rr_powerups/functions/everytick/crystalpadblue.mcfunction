execute unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=20..},limit=1] as @a[predicate=custom:indimension,team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=captureMiddle,limit=1] PowerupCrystal 1
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] unless entity @s[scores={PowerupCrystal=20..}] run scoreboard players add @s PowerupCrystal 1

#Destroy platforms when not captured
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=96},limit=1] run tp @a[predicate=custom:indimension,team=Blue,predicate=rr_powerups:oncrystalblue] 12 64 -66 0 0
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=96},limit=1] run scoreboard players reset @e[predicate=custom:indimension,type=marker,tag=captureMiddle,limit=1] PowerupCrystal
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=96},limit=1] run fill 14 63 -68 10 66 -72 air destroy
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=96},limit=1] run fill 14 63 -67 10 63 -67 air destroy
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=96},limit=1] positioned 12 66 -69 run playsound minecraft:block.respawn_anchor.deplete master @a[predicate=custom:indimension] ~ ~ ~ 2 0
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=96},limit=1] run kill @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalDeco]
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=..92},limit=1] run setblock 12 66 -67 obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=..94},limit=1] run fill 11 65 -67 13 65 -67 obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=..96},limit=1] run fill 11 64 -67 13 64 -67 obsidian

#Kill entities if someone left the platform
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},limit=1] unless entity @a[predicate=custom:indimension,team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run kill @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalDeco]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},limit=1] unless entity @a[predicate=custom:indimension,team=Blue,predicate=rr_powerups:oncrystalblue,limit=1] run scoreboard players set @s PowerupCrystal 20

#Assemble platform - Blue
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] run setblock 12 63 -67 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] run setblock 13 63 -67 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] run setblock 11 63 -67 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] run setblock 14 63 -67 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] run setblock 10 63 -67 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] run fill 11 64 -67 13 64 -67 air destroy
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.respawn_anchor.charge master @a[predicate=custom:indimension] ~ ~ ~ 2 0
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.respawn_anchor.charge master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=1,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
#
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=2,captureYellow=98..},limit=1] run setblock 12 63 -68 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=2,captureYellow=98..},limit=1] run setblock 11 63 -69 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=2,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},limit=1] run fill 11 65 -67 13 65 -67 air destroy
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},limit=1] run setblock 12 63 -69 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},limit=1] run setblock 13 63 -68 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},limit=1] run setblock 11 63 -68 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},limit=1] run fill 14 63 -68 14 65 -68 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},limit=1] run fill 10 63 -68 10 65 -68 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=3,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=4,captureYellow=98..},limit=1] run setblock 13 63 -69 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=4,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] run fill 12 66 -67 12 66 -67 air destroy
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] run setblock 14 63 -69 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] run setblock 10 63 -69 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] run setblock 14 64 -69 magenta_stained_glass_pane[north=true,south=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] run setblock 14 65 -69 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] run setblock 10 64 -69 magenta_stained_glass_pane[north=true,south=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] run setblock 10 65 -69 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=5,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=6,captureYellow=98..},limit=1] run setblock 11 63 -70 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=6,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] run setblock 12 63 -70 end_portal_frame[facing=south]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] run setblock 14 63 -70 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] run setblock 10 63 -70 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] run setblock 14 64 -70 magenta_stained_glass_pane[north=true,south=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] run setblock 14 65 -70 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] run setblock 10 64 -70 magenta_stained_glass_pane[north=true,south=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] run setblock 10 65 -70 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=7,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=8,captureYellow=98..},limit=1] run setblock 13 63 -70 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=8,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},limit=1] run setblock 14 63 -71 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},limit=1] run setblock 10 63 -71 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},limit=1] run setblock 14 64 -71 magenta_stained_glass_pane[north=true,south=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},limit=1] run setblock 14 65 -71 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},limit=1] run setblock 10 64 -71 magenta_stained_glass_pane[north=true,south=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},limit=1] run setblock 10 65 -71 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=9,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=10,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureYellow=98..},limit=1] run setblock 11 63 -71 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureYellow=98..},limit=1] run fill 14 63 -72 14 65 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureYellow=98..},limit=1] run fill 10 63 -72 10 65 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=11,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=12,captureYellow=98..},limit=1] run setblock 12 63 -71 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=12,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] run setblock 13 63 -71 netherite_block
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] run setblock 13 63 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] run setblock 11 63 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] run setblock 13 64 -72 magenta_stained_glass_pane[east=true,west=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] run setblock 11 64 -72 magenta_stained_glass_pane[east=true,west=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] run fill 13 65 -72 13 66 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] run fill 11 65 -72 11 66 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=13,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=14,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureYellow=98..},limit=1] run setblock 12 63 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureYellow=98..},limit=1] run fill 12 64 -72 12 65 -72 magenta_stained_glass_pane[east=true,west=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=15,captureYellow=98..},limit=1] run setblock 12 66 -72 obsidian
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=16,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=17,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=18,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=19,captureYellow=98..},limit=1] positioned 12 63 -70 run playsound minecraft:block.lava.pop master @a[predicate=custom:indimension] ~ ~ ~ 2 2

# pad is indestructible
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={PowerupCrystal=20..,captureYellow=98..},limit=1] run function rr_powerups:everytick/crystalpadblue_place

# place if crystal is present
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] if entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 11 63 -67 11 63 -68 obsidian replace crying_obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] if entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 -67 13 63 -68 obsidian replace crying_obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] if entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 14 63 -69 14 63 -71 obsidian replace crying_obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] if entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 10 63 -69 10 63 -71 obsidian replace crying_obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] if entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 -72 11 63 -72 obsidian replace crying_obsidian

# place unless crystal is present
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 11 63 -67 11 63 -68 crying_obsidian replace obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 -67 13 63 -68 crying_obsidian replace obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 14 63 -69 14 63 -71 crying_obsidian replace obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 10 63 -69 10 63 -71 crying_obsidian replace obsidian
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..},limit=1] unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1] run fill 13 63 -72 11 63 -72 crying_obsidian replace obsidian

####

execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=21},limit=1] run summon armor_stand 12 62.2 -71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=21},limit=1] positioned 12 64 -70 run playsound minecraft:block.end_portal_frame.fill master @a[predicate=custom:indimension] ~ ~ ~ 2 0.8

execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25},limit=1] run summon armor_stand 11 62.2 -71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25},limit=1] run summon armor_stand 13 62.2 -71 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=25},limit=1] positioned 12 64 -70 run playsound minecraft:block.end_portal_frame.fill master @a[predicate=custom:indimension] ~ ~ ~ 2 0.8

execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30},limit=1] run summon armor_stand 11 62.2 -70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30},limit=1] run summon armor_stand 13 62.2 -70 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=30},limit=1] positioned 12 64 -70 run playsound minecraft:block.end_portal_frame.fill master @a[predicate=custom:indimension] ~ ~ ~ 2 0.9

execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35},limit=1] run summon armor_stand 11 62.2 -69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35},limit=1] run summon armor_stand 13 62.2 -69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=35},limit=1] positioned 12 64 -70 run playsound minecraft:block.end_portal_frame.fill master @a[predicate=custom:indimension] ~ ~ ~ 2 1

execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=40},limit=1] run summon armor_stand 12 62.2 -69 {NoGravity:1b,Silent:1b,Tags:["PUCrystalDeco","PUCrystalEntity"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1b}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=40},limit=1] positioned 12 64 -70 run playsound minecraft:block.end_portal_frame.fill master @a[predicate=custom:indimension] ~ ~ ~ 2 1.4

execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=45},limit=1] run setblock 12 63 -70 end_portal_frame[facing=south,eye=true]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=45},limit=1] positioned 12 64 -70 run playsound minecraft:block.end_portal_frame.fill master @a[predicate=custom:indimension] ~ ~ ~ 2 1.2

execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},limit=1] run particle minecraft:end_rod 12 65 -70 1 0 1 0.1 100
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},limit=1] positioned 12 64 -70 run playsound minecraft:entity.shulker.shoot master @a[predicate=custom:indimension] ~ ~ ~ 1 0.65
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},limit=1] run kill @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalDeco]
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},limit=1] run summon armor_stand 12 63.5 -69 {Marker:1b,Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["PUCrystalAS","NotSet","PUCrystalEntity"],Passengers:[{id:"end_crystal",ShowBottom:0b,Invulnerable:1b,Tags:["NotSet","PUCrystal","PUCrystalEntity"]}]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},limit=1] run summon marker 12 55 0 {Tags:["BlueCrystalSpot","NotSet","PUCrystalEntity"]}
execute as @e[predicate=custom:indimension,type=marker,tag=captureMiddle,scores={captureYellow=98..,PowerupCrystal=55},limit=1] run scoreboard players set @s PowerupCrystal 20

execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,limit=1] at @s positioned ~ ~.25 ~-3 if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,limit=1] at @s positioned ~ ~.25 ~-3 if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]

execute as @e[predicate=custom:indimension,type=marker,tag=PUCrystalAS] unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal] run kill @s
execute as @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot] unless entity @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal] run kill @s
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS] unless entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot] run kill @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS] unless entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot] run kill @s

execute as @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,tag=NotSet,limit=1] at @s run spreadplayers ~ ~ 0 4 false @s
execute as @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,tag=NotSet,limit=1] at @s run tp @s ~ 54.5 ~
tag @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,tag=NotSet,limit=1] remove NotSet

execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] run scoreboard players add @s PowerupCrystal 1
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1,scores={PowerupCrystal=1..15}] at @s run tp @s ~ ~0.25 ~
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1,scores={PowerupCrystal=16..30}] at @s run tp @s ~ ~0.15 ~
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,limit=1,sort=nearest,distance=10..] run tp @s ^ ^ ^1 facing entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,limit=1,sort=nearest]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,limit=1,sort=nearest,distance=5..10] run tp @s ^ ^ ^0.75 facing entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,limit=1,sort=nearest]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,limit=1,sort=nearest,distance=..5] run tp @s ^ ^ ^0.5 facing entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,limit=1,sort=nearest]

execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,distance=..0.5,limit=1] at @s run playsound minecraft:entity.ender_eye.death master @a[predicate=custom:indimension] ~ ~ ~ 2 0.5
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,distance=..0.5,limit=1] at @s run playsound minecraft:block.beacon.power_select master @a[predicate=custom:indimension] ~ ~ ~ 2 1.6
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,distance=..0.5,limit=1] run tag @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,limit=1,sort=nearest] add Set
execute as @e[predicate=custom:indimension,type=armor_stand,tag=PUCrystalAS,tag=NotSet,limit=1] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,distance=..0.5,limit=1] run kill @s
scoreboard players add @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,tag=!PUCrystalPerma,tag=Set] PowerupCrystal 1
execute as @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}] at @s run kill @e[predicate=custom:indimension,type=marker,tag=BlueCrystalSpot,distance=..0.5,limit=1]
execute as @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}] at @s run particle flash ~ ~ ~ 0 0 0 4 2 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}] at @s run summon end_crystal ~ ~ ~ {Invulnerable:1b,ShowBottom:0b,Tags:["PUCrystal","PUCrystalEntity","PUCrystalPerma"]}
kill @e[predicate=custom:indimension,type=end_crystal,tag=PUCrystal,tag=Set,tag=!PUCrystalPerma,limit=1,scores={PowerupCrystal=3..}]