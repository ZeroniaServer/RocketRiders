#> Details disabled. Crusade uses a custom map.
function arenaclear:baseplacement
#function arenaclear:detailplacement

#> Remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

#> Restore glass when game starts
execute as @e[predicate=custom:indimension,type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement
function rr_crusade:game/glassplacement
scoreboard players set @e[predicate=custom:indimension,type=marker,tag=crusadeWall] CmdData 20

#> Pregame bases
fill -101 201 65 -89 195 64 deepslate_bricks
fill -101 201 60 -101 195 63 deepslate_bricks
fill -89 195 60 -89 201 63 deepslate_bricks
setblock -89 202 62 deepslate_bricks
setblock -89 202 65 deepslate_bricks
setblock -92 202 65 deepslate_bricks
setblock -95 202 65 deepslate_bricks
setblock -98 202 65 deepslate_bricks
setblock -101 202 65 deepslate_bricks
setblock -101 202 62 deepslate_bricks
fill -101 195 91 -89 201 92 deepslate_bricks
fill -89 201 93 -89 195 96 deepslate_bricks
fill -101 195 96 -101 201 91 deepslate_bricks
fill -101 195 97 -89 201 97 air
fill -101 195 59 -89 201 59 air
setblock -101 202 94 deepslate_bricks
setblock -101 202 91 deepslate_bricks
setblock -98 202 91 deepslate_bricks
setblock -95 202 91 deepslate_bricks
setblock -92 202 91 deepslate_bricks
setblock -89 202 91 deepslate_bricks
setblock -89 202 94 deepslate_bricks
fill -101 200 85 -99 202 85 bedrock
fill -91 200 85 -89 202 85 bedrock
fill -101 200 84 -99 202 84 yellow_stained_glass
fill -91 200 84 -89 202 84 yellow_stained_glass
fill -99 200 72 -101 202 72 bedrock
fill -91 200 72 -89 202 72 bedrock
fill -99 200 73 -101 202 73 blue_stained_glass
fill -91 200 73 -89 202 73 blue_stained_glass
fill -94 198 91 -96 200 94 minecraft:crying_obsidian
fill -96 198 65 -94 200 62 minecraft:crying_obsidian

fill 35 36 75 -11 59 73 air
fill 36 36 -73 -12 59 -75 air

#> Yellow
fill -14 34 52 38 63 56 deepslate_bricks
fill 38 34 57 34 63 66 deepslate_bricks
fill -14 34 57 -10 63 66 deepslate_bricks
#
fill 38 64 52 34 68 56 minecraft:deepslate_bricks
fill 30 64 52 26 68 56 deepslate_bricks
fill 22 64 52 18 68 56 deepslate_bricks
fill 14 64 52 10 68 56 minecraft:deepslate_bricks
fill 6 64 52 2 68 56 deepslate_bricks
fill -2 64 56 -6 68 52 minecraft:deepslate_bricks
fill -10 64 56 -14 68 52 deepslate_bricks
fill -10 64 62 -14 68 66 deepslate_bricks
fill 38 64 62 34 68 66 deepslate_bricks
#
fill 36 64 57 36 68 57 ladder[facing=south]
fill 12 64 57 12 68 57 ladder[facing=south]
fill -12 64 57 -12 68 57 ladder[facing=south]
#Objectives
#Main
fill 20 45 52 4 55 66 minecraft:crying_obsidian
#A
fill 41 52 -39 35 52 -37 bedrock
fill 36 47 -39 40 51 -35 minecraft:blue_stained_glass
fill 36 51 -40 40 47 -40 light[level=1]
#B
fill -11 52 -39 -17 52 -37 bedrock
fill -16 47 -35 -12 51 -39 minecraft:blue_stained_glass
fill -16 51 -40 -12 47 -40 light[level=1]

#> Blue
fill -14 34 -52 38 63 -56 deepslate_bricks
fill 38 34 -66 34 63 -57 deepslate_bricks
fill -14 34 -66 -10 63 -57 deepslate_bricks
#
fill 38 64 -52 34 68 -56 deepslate_bricks
fill 30 64 -52 26 68 -56 deepslate_bricks
fill 22 64 -52 18 68 -56 deepslate_bricks
fill 14 64 -52 10 68 -56 deepslate_bricks
fill 6 64 -52 2 68 -56 deepslate_bricks
fill -2 64 -52 -6 68 -56 deepslate_bricks
fill -10 64 -52 -14 68 -56 deepslate_bricks
fill -10 64 -62 -14 68 -66 deepslate_bricks
fill 38 64 -62 34 68 -66 deepslate_bricks
#
fill 36 64 -57 36 68 -57 ladder[facing=north]
fill 12 64 -57 12 68 -57 ladder[facing=north]
fill -12 64 -57 -12 68 -57 ladder[facing=north]
#Objectives
#Main
fill 4 55 -52 20 45 -66 minecraft:crying_obsidian
#A
fill -17 52 39 -11 52 37 bedrock
fill -12 47 39 -16 51 35 minecraft:yellow_stained_glass
fill -16 51 40 -12 47 40 light[level=1]
#B
fill 35 52 39 41 52 37 bedrock
fill 40 47 35 36 51 39 minecraft:yellow_stained_glass
fill 36 51 40 40 47 40 light[level=1]

#> prepare crystals and health
scoreboard players set $YellowShield crusadehp 200
scoreboard players set $CYA crusadehp 100
scoreboard players set $CYB crusadehp 100
execute unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeYellowA] run summon end_crystal -14 49 37 {Tags:["CrusadeEntity","CrusadeYellowA"],BeamTarget:{X:12,Y:50,Z:52},ShowBottom:0b}
execute unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeYellowB] run summon end_crystal 38 49 37 {Tags:["CrusadeEntity","CrusadeYellowB"],BeamTarget:{X:12,Y:50,Z:52},ShowBottom:0b}

scoreboard players set $BlueShield crusadehp 200
scoreboard players set $CBA crusadehp 100
scoreboard players set $CBB crusadehp 100
execute unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeBlueA] run summon end_crystal 38 49 -37 {Tags:["CrusadeEntity","CrusadeBlueA"],BeamTarget:{X:12,Y:50,Z:-52},ShowBottom:0b}
execute unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeBlueB] run summon end_crystal -14 49 -37 {Tags:["CrusadeEntity","CrusadeBlueB"],BeamTarget:{X:12,Y:50,Z:-52},ShowBottom:0b}

#Set pre-game kit stands
#blue
summon armor_stand -94 202 64 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","KnightStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Knight","color":"dark_green","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{RightArm:[321f,0f,0f]}}
setblock -94 202 63 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}','{"text":"Knight","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
summon armor_stand -95 202 64 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","ArcherStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Archer","color":"red","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,0f,353f],RightLeg:[12f,0f,0f],LeftArm:[270f,68f,0f],RightArm:[274f,346f,0f]}}
setblock -95 202 63 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}','{"text":"Archer","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
summon armor_stand -96 202 64 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","MageStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Mage","color":"dark_purple","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[345f,0f,0f],LeftLeg:[323f,0f,0f],RightLeg:[38f,0f,0f],LeftArm:[23f,0f,0f],RightArm:[215f,0f,0f]}}
setblock -96 202 63 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}','{"text":"Mage","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
#yellow
summon armor_stand -96 202 92 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","KnightStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Knight","color":"dark_green","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{RightArm:[321f,0f,0f]}}
setblock -96 202 93 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}','{"text":"Knight","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
summon armor_stand -95 202 92 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","ArcherStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Archer","color":"red","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,0f,353f],RightLeg:[12f,0f,0f],LeftArm:[270f,68f,0f],RightArm:[274f,346f,0f]}}
setblock -95 202 93 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}','{"text":"Archer","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
summon armor_stand -94 202 92 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","MageStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Mage","color":"dark_purple","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[345f,0f,0f],LeftLeg:[323f,0f,0f],RightLeg:[38f,0f,0f],LeftArm:[23f,0f,0f],RightArm:[215f,0f,0f]}}
setblock -94 202 93 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}','{"text":"Mage","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
#Text
summon area_effect_cloud -95 204 64 {Duration:2000000000,Tags:["CrusadeEntity","KitMessage"],CustomName:'{"text":"Click a sign to select a kit!"}',CustomNameVisible:1b}
summon area_effect_cloud -95 204 92 {Duration:2000000000,Tags:["CrusadeEntity","KitMessage"],CustomName:'{"text":"Click a sign to select a kit!"}',CustomNameVisible:1b}


# Set in-game kit stands
#blue
fill 14 63 -63 14 64 -63 minecraft:obsidian
summon armor_stand 14 65 -63 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","KnightStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Knight","color":"dark_green","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{RightArm:[321f,0f,0f]}}
setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}','{"text":"Knight","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
fill 12 63 -62 12 64 -62 minecraft:obsidian
summon armor_stand 12 65 -62 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","ArcherStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Archer","color":"red","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,0f,353f],RightLeg:[12f,0f,0f],LeftArm:[270f,68f,0f],RightArm:[274f,346f,0f]}}
setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}','{"text":"Archer","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
fill 10 63 -63 10 64 -63 minecraft:obsidian
summon armor_stand 10 65 -63 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","MageStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Mage","color":"dark_purple","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[345f,0f,0f],LeftLeg:[323f,0f,0f],RightLeg:[38f,0f,0f],LeftArm:[23f,0f,0f],RightArm:[215f,0f,0f]}}
setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}','{"text":"Mage","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
#yellow
fill 14 63 63 14 64 63 minecraft:obsidian
summon armor_stand 10 65 63 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","KnightStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Knight","color":"dark_green","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{RightArm:[321f,0f,0f]}}
setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}','{"text":"Knight","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
fill 12 63 62 12 64 62 minecraft:obsidian
summon armor_stand 12 65 62 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","ArcherStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Archer","color":"red","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,0f,353f],RightLeg:[12f,0f,0f],LeftArm:[270f,68f,0f],RightArm:[274f,346f,0f]}}
setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}','{"text":"Archer","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
fill 10 63 63 10 64 63 minecraft:obsidian
summon armor_stand 14 65 63 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","MageStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Mage","color":"dark_purple","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[345f,0f,0f],LeftLeg:[323f,0f,0f],RightLeg:[38f,0f,0f],LeftArm:[23f,0f,0f],RightArm:[215f,0f,0f]}}
setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}','{"text":"Mage","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}

#kit stand items
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand] run item replace entity @s armor.head with netherite_helmet
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand,tag=BlueKit] run item replace entity @s armor.chest with leather_chestplate{display:{color:3949738}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand,tag=YellowKit] run item replace entity @s armor.chest with leather_chestplate{display:{color:16768000}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand] run item replace entity @s armor.legs with iron_leggings
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand,tag=BlueKit] run item replace entity @s armor.feet with leather_boots{display:{color:3949738}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand,tag=YellowKit] run item replace entity @s armor.feet with leather_boots{display:{color:16768000}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand] run item replace entity @s weapon.mainhand with stone_sword
execute as @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand] run item replace entity @s weapon.offhand with shield

execute as @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand] run item replace entity @s armor.head with chainmail_helmet
execute as @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand] run item replace entity @s armor.chest with chainmail_chestplate
execute as @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand,tag=BlueKit] run item replace entity @s armor.legs with leather_leggings{display:{color:3949738}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand,tag=YellowKit] run item replace entity @s armor.legs with leather_leggings{display:{color:16768000}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand,tag=BlueKit] run item replace entity @s armor.feet with leather_boots{display:{color:3949738}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand,tag=YellowKit] run item replace entity @s armor.feet with leather_boots{display:{color:16768000}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand] run item replace entity @s weapon.mainhand with bow

execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=BlueKit] run item replace entity @s armor.head with warped_fence_gate
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=YellowKit] run item replace entity @s armor.head with birch_fence_gate
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=BlueKit] run item replace entity @s armor.chest with leather_chestplate{display:{color:3949738}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=YellowKit] run item replace entity @s armor.chest with leather_chestplate{display:{color:16768000}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=BlueKit] run item replace entity @s armor.legs with leather_leggings{display:{color:3949738}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=YellowKit] run item replace entity @s armor.legs with leather_leggings{display:{color:16768000}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=BlueKit] run item replace entity @s armor.feet with leather_boots{display:{color:3949738}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,tag=YellowKit] run item replace entity @s armor.feet with leather_boots{display:{color:16768000}}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=MageStand] run item replace entity @s weapon.mainhand with blaze_rod

#> Kit stand light blocks
fill 15 64 -64 13 67 -62 light[level=0] replace air
fill 13 64 -63 11 67 -61 light[level=0] replace air
fill 11 64 -64 9 67 -62 light[level=0] replace air
fill 15 64 64 13 67 62 light[level=0] replace air
fill 13 64 63 11 67 61 light[level=0] replace air
fill 11 64 64 9 67 62 light[level=0] replace air