#> Details disabled. Crusade uses a custom map.
function arenaclear:baseplacement
#function arenaclear:detailplacement

#> Remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

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
fill -102 194 97 -88 202 97 obsidian
fill -102 202 59 -88 194 59 minecraft:obsidian
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
fill -94 198 91 -96 200 91 minecraft:crying_obsidian
fill -96 198 65 -94 200 65 minecraft:crying_obsidian

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
fill 10 52 52 14 56 66 minecraft:crying_obsidian
#A
fill -3 57 37 3 63 37 bedrock
fill 3 63 39 -3 63 38 bedrock
fill 2 62 32 -2 58 36 minecraft:yellow_stained_glass
fill 4 57 37 4 63 37 ladder[facing=east]
#B
fill 21 57 37 27 63 37 bedrock
fill 27 63 38 21 63 39 bedrock
fill 26 58 32 22 62 36 minecraft:yellow_stained_glass
fill 20 57 37 20 63 37 ladder[facing=west]


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
fill 10 56 -66 14 52 -52 minecraft:crying_obsidian
#A
fill 27 57 -33 21 63 -33 bedrock
fill 21 63 -34 27 63 -35 bedrock
fill 26 58 -28 22 62 -32 minecraft:blue_stained_glass
fill 20 57 -33 20 63 -33 ladder[facing=west]
#B
fill 3 57 -33 -3 63 -33 bedrock
fill -3 63 -34 3 63 -35 bedrock
fill 2 58 -28 -2 62 -32 minecraft:blue_stained_glass
fill 4 57 -33 4 63 -33 ladder[facing=east]

#> prepare crystals and health
scoreboard players set $YellowShield crusadehp 200
scoreboard players set $CYA crusadehp 100
scoreboard players set $CYB crusadehp 100
execute unless entity @e[type=end_crystal,tag=CrusadeYellowA] run summon end_crystal 0 60 34 {Tags:["CrusadeEntity","CrusadeYellowA"],BeamTarget:{X:12,Y:54,Z:52},ShowBottom:0b}
execute unless entity @e[type=end_crystal,tag=CrusadeYellowB] run summon end_crystal 24 60 34 {Tags:["CrusadeEntity","CrusadeYellowB"],BeamTarget:{X:12,Y:54,Z:52},ShowBottom:0b}

scoreboard players set $BlueShield crusadehp 200
scoreboard players set $CBA crusadehp 100
scoreboard players set $CBB crusadehp 100
execute unless entity @e[type=end_crystal,tag=CrusadeBlueA] run summon end_crystal 24 60 -30 {Tags:["CrusadeEntity","CrusadeBlueA"],BeamTarget:{X:12,Y:54,Z:-52},ShowBottom:0b}
execute unless entity @e[type=end_crystal,tag=CrusadeBlueB] run summon end_crystal 0 60 -30 {Tags:["CrusadeEntity","CrusadeBlueB"],BeamTarget:{X:12,Y:54,Z:-52},ShowBottom:0b}

#Set pre-game kit stands
#blue
summon armor_stand -94 202 64 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","KnightStand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Knight","color":"dark_green","bold":"true"}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{RightArm:[321f,0f,0f]}}
setblock -94 202 63 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}',Text2:'{"text":"Knight","bold":true,"color":"#008805"}'}
summon armor_stand -95 202 64 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","ArcherStand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Archer","color":"red","bold":"true"}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,0f,353f],RightLeg:[12f,0f,0f],LeftArm:[270f,68f,0f],RightArm:[274f,346f,0f]}}
setblock -95 202 63 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}',Text2:'{"text":"Archer","bold":true,"color":"#008805"}'}
summon armor_stand -96 202 64 {Rotation:[-180f,0f],Tags:["CrusadeEntity","KitSelect","MageStand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Mage","color":"dark_purple","bold":"true"}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[345f,0f,0f],LeftLeg:[323f,0f,0f],RightLeg:[38f,0f,0f],LeftArm:[23f,0f,0f],RightArm:[215f,0f,0f]}}
setblock -96 202 63 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}',Text2:'{"text":"Mage","bold":true,"color":"#008805"}'}
#yellow
summon armor_stand -96 202 92 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","KnightStand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Knight","color":"dark_green","bold":"true"}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{RightArm:[321f,0f,0f]}}
setblock -96 202 93 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}',Text2:'{"text":"Knight","bold":true,"color":"#008805"}'}
summon armor_stand -95 202 92 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","ArcherStand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Archer","color":"red","bold":"true"}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,0f,353f],RightLeg:[12f,0f,0f],LeftArm:[270f,68f,0f],RightArm:[274f,346f,0f]}}
setblock -95 202 93 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}',Text2:'{"text":"Archer","bold":true,"color":"#008805"}'}
summon armor_stand -94 202 92 {Rotation:[0f,0f],Tags:["CrusadeEntity","KitSelect","MageStand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:'{"text":"Mage","color":"dark_purple","bold":"true"}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[345f,0f,0f],LeftLeg:[323f,0f,0f],RightLeg:[38f,0f,0f],LeftArm:[23f,0f,0f],RightArm:[215f,0f,0f]}}
setblock -94 202 93 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}',Text2:'{"text":"Mage","bold":true,"color":"#008805"}'}
#Text
summon area_effect_cloud -95 204 64 {Duration:2000000000,Tags:["CrusadeEntity","KitMessage"],CustomName:'{"text":"Click a sign to select a kit!"}',CustomNameVisible:1b}
summon area_effect_cloud -95 204 92 {Duration:2000000000,Tags:["CrusadeEntity","KitMessage"],CustomName:'{"text":"Click a sign to select a kit!"}',CustomNameVisible:1b}

#kit stand items
execute as @e[tag=KnightStand] run item replace entity @s armor.head with netherite_helmet
execute as @e[tag=KnightStand] run item replace entity @s armor.chest with leather_chestplate
execute as @e[tag=KnightStand] run item replace entity @s armor.legs with iron_leggings
execute as @e[tag=KnightStand] run item replace entity @s armor.feet with leather_boots
execute as @e[tag=KnightStand] run item replace entity @s weapon.mainhand with stone_sword
execute as @e[tag=KnightStand] run item replace entity @s weapon.offhand with shield

execute as @e[tag=ArcherStand] run item replace entity @s armor.head with chainmail_helmet
execute as @e[tag=ArcherStand] run item replace entity @s armor.chest with chainmail_chestplate
execute as @e[tag=ArcherStand] run item replace entity @s armor.legs with leather_leggings
execute as @e[tag=ArcherStand] run item replace entity @s armor.feet with leather_boots
execute as @e[tag=ArcherStand] run item replace entity @s weapon.mainhand with bow

execute as @e[tag=MageStand] run item replace entity @s armor.head with oak_fence_gate
execute as @e[tag=MageStand] run item replace entity @s armor.chest with leather_chestplate
execute as @e[tag=MageStand] run item replace entity @s armor.legs with leather_leggings
execute as @e[tag=MageStand] run item replace entity @s armor.feet with leather_boots
execute as @e[tag=MageStand] run item replace entity @s weapon.mainhand with blaze_rod

#> Bridges
function rr_crusade:arenaclear/bridgeplacement