execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run return fail

#> Remove portals
fill -12 36 -75 36 59 -73 air
fill -11 36 73 35 59 75 air

#> Restore glass when game starts
kill @e[x=0,type=marker,tag=crusadeWall]
execute unless entity @e[x=0,type=marker,tag=crusadeWall,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["crusadeWall"]}
execute as @e[x=0,type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement
function rr_crusade:game/glassplacement
scoreboard players set @e[x=0,type=marker,tag=crusadeWall] CmdData 20

#> Yellow
fill -14 34 52 38 63 56 deepslate_bricks
fill 38 34 57 34 63 66 deepslate_bricks
fill -14 34 57 -10 63 66 deepslate_bricks
# #
# fill 38 64 52 34 68 56 minecraft:deepslate_bricks
# fill 30 64 52 26 68 56 deepslate_bricks
# fill 22 64 52 18 68 56 deepslate_bricks
# fill 14 64 52 10 68 56 minecraft:deepslate_bricks
# fill 6 64 52 2 68 56 deepslate_bricks
# fill -2 64 56 -6 68 52 minecraft:deepslate_bricks
# fill -10 64 56 -14 68 52 deepslate_bricks
# fill -10 64 62 -14 68 66 deepslate_bricks
# fill 38 64 62 34 68 66 deepslate_bricks
# #
# fill 36 64 57 36 68 57 ladder[facing=south]
# fill 12 64 57 12 68 57 ladder[facing=south]
# fill -12 64 57 -12 68 57 ladder[facing=south]
place template rr_crusade:castle 38 59 66 180
place template rr_crusade:castle2 -10 59 66 180
setblock 0 63 57 orange_stained_glass
fill -5 63 57 -3 63 57 orange_stained_glass
fill 11 63 57 13 63 57 orange_stained_glass

#Objectives
#Main
fill 20 45 52 4 55 66 minecraft:crying_obsidian
#A
fill 41 52 -39 35 52 -37 bedrock
execute unless predicate game:gamemode_components/red_for_blue run fill 36 47 -39 40 51 -35 minecraft:blue_stained_glass
execute if predicate game:gamemode_components/red_for_blue run fill 36 47 -39 40 51 -35 minecraft:red_stained_glass
fill 36 51 -40 40 47 -40 light[level=1]
#B
fill -11 52 -39 -17 52 -37 bedrock
execute unless predicate game:gamemode_components/red_for_blue run fill -16 47 -35 -12 51 -39 minecraft:blue_stained_glass
execute if predicate game:gamemode_components/red_for_blue run fill -16 47 -35 -12 51 -39 minecraft:red_stained_glass
fill -16 51 -40 -12 47 -40 light[level=1]

#> Blue
fill -14 34 -52 38 63 -56 deepslate_bricks
fill 38 34 -66 34 63 -57 deepslate_bricks
fill -14 34 -66 -10 63 -57 deepslate_bricks
# #
# fill 38 64 -52 34 68 -56 deepslate_bricks
# fill 30 64 -52 26 68 -56 deepslate_bricks
# fill 22 64 -52 18 68 -56 deepslate_bricks
# fill 14 64 -52 10 68 -56 deepslate_bricks
# fill 6 64 -52 2 68 -56 deepslate_bricks
# fill -2 64 -52 -6 68 -56 deepslate_bricks
# fill -10 64 -52 -14 68 -56 deepslate_bricks
# fill -10 64 -62 -14 68 -66 deepslate_bricks
# fill 38 64 -62 34 68 -66 deepslate_bricks
# #
# fill 36 64 -57 36 68 -57 ladder[facing=north]
# fill 12 64 -57 12 68 -57 ladder[facing=north]
# fill -12 64 -57 -12 68 -57 ladder[facing=north]
place template rr_crusade:castle -14 59 -66
place template rr_crusade:castle2 34 59 -66
execute unless predicate game:gamemode_components/red_for_blue run fill 13 63 -57 11 63 -57 cyan_stained_glass
execute if predicate game:gamemode_components/red_for_blue run fill 13 63 -57 11 63 -57 pink_stained_glass
execute unless predicate game:gamemode_components/red_for_blue run setblock 24 63 -57 cyan_stained_glass
execute if predicate game:gamemode_components/red_for_blue run setblock 24 63 -57 pink_stained_glass
execute unless predicate game:gamemode_components/red_for_blue run fill 29 63 -57 27 63 -57 cyan_stained_glass
execute if predicate game:gamemode_components/red_for_blue run fill 29 63 -57 27 63 -57 pink_stained_glass

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
scoreboard players set $CYAcd crusadehp 0
scoreboard players set $CYBcd crusadehp 0
scoreboard players set $CYAprecd crusadehp 0
scoreboard players set $CYBprecd crusadehp 0
execute unless entity @e[x=0,type=end_crystal,tag=CrusadeYellowA] run summon end_crystal -14 49 37 {Tags:["CrusadeEntity","CrusadeYellowA"],beam_target:[I;12,50,52],ShowBottom:0b}
execute unless entity @e[x=0,type=end_crystal,tag=CrusadeYellowB] run summon end_crystal 38 49 37 {Tags:["CrusadeEntity","CrusadeYellowB"],beam_target:[I;12,50,52],ShowBottom:0b}

scoreboard players set $BlueShield crusadehp 200
scoreboard players set $CBA crusadehp 100
scoreboard players set $CBB crusadehp 100
scoreboard players set $CBAcd crusadehp 0
scoreboard players set $CBBcd crusadehp 0
scoreboard players set $CBAprecd crusadehp 0
scoreboard players set $CBBprecd crusadehp 0
execute unless entity @e[x=0,type=end_crystal,tag=CrusadeBlueA] run summon end_crystal 38 49 -37 {Tags:["CrusadeEntity","CrusadeBlueA"],beam_target:[I;12,50,-52],ShowBottom:0b}
execute unless entity @e[x=0,type=end_crystal,tag=CrusadeBlueB] run summon end_crystal -14 49 -37 {Tags:["CrusadeEntity","CrusadeBlueB"],beam_target:[I;12,50,-52],ShowBottom:0b}

# Set in-game kit stands
#blue
fill 14 63 -63 14 64 -63 minecraft:obsidian
summon armor_stand 14 65 -63 {Rotation:[-180.0f,0.0f],Tags:["CrusadeEntity","KitSelect","KnightStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:{"text":"Knight","color":"dark_green","bold":true},CustomNameVisible:1b,Pose:{RightArm:[321.0f,0.0f,0.0f]}}
setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:1b,messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 1"},"color":"#09FF00"},{"text":"Knight","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
fill 12 63 -62 12 64 -62 minecraft:obsidian
summon armor_stand 12 65 -62 {Rotation:[-180.0f,0.0f],Tags:["CrusadeEntity","KitSelect","ArcherStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:{"text":"Archer","color":"red","bold":true},CustomNameVisible:1b,Pose:{Head:[0.0f,0.0f,353.0f],RightLeg:[12.0f,0.0f,0.0f],LeftArm:[270.0f,68.0f,0.0f],RightArm:[274.0f,346.0f,0.0f]}}
setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:1b,messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 2"},"color":"#09FF00"},{"text":"Archer","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
fill 10 63 -63 10 64 -63 minecraft:obsidian
summon armor_stand 10 65 -63 {Rotation:[-180.0f,0.0f],Tags:["CrusadeEntity","KitSelect","MageStand","BlueKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:{"text":"Mage","color":"dark_purple","bold":true},CustomNameVisible:1b,Pose:{Head:[345.0f,0.0f,0.0f],LeftLeg:[323.0f,0.0f,0.0f],RightLeg:[38.0f,0.0f,0.0f],LeftArm:[23.0f,0.0f,0.0f],RightArm:[215.0f,0.0f,0.0f]}}
setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:1b,messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 3"},"color":"#09FF00"},{"text":"Mage","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
#yellow
fill 14 63 63 14 64 63 minecraft:obsidian
summon armor_stand 10 65 63 {Rotation:[0.0f,0.0f],Tags:["CrusadeEntity","KitSelect","KnightStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:{"text":"Knight","color":"dark_green","bold":true},CustomNameVisible:1b,Pose:{RightArm:[321.0f,0.0f,0.0f]}}
setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:1b,messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 1"},"color":"#09FF00"},{"text":"Knight","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
fill 12 63 62 12 64 62 minecraft:obsidian
summon armor_stand 12 65 62 {Rotation:[0.0f,0.0f],Tags:["CrusadeEntity","KitSelect","ArcherStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:{"text":"Archer","color":"red","bold":true},CustomNameVisible:1b,Pose:{Head:[0.0f,0.0f,353.0f],RightLeg:[12.0f,0.0f,0.0f],LeftArm:[270.0f,68.0f,0.0f],RightArm:[274.0f,346.0f,0.0f]}}
setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:1b,messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 2"},"color":"#09FF00"},{"text":"Archer","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}
fill 10 63 63 10 64 63 minecraft:obsidian
summon armor_stand 14 65 63 {Rotation:[0.0f,0.0f],Tags:["CrusadeEntity","KitSelect","MageStand","YellowKit"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,CustomName:{"text":"Mage","color":"dark_purple","bold":true},CustomNameVisible:1b,Pose:{Head:[345.0f,0.0f,0.0f],LeftLeg:[323.0f,0.0f,0.0f],RightLeg:[38.0f,0.0f,0.0f],LeftArm:[23.0f,0.0f,0.0f],RightArm:[215.0f,0.0f,0.0f]}}
setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:1b,messages:[{"text":"Select Kit:","click_event":{"action":"run_command","command":"/trigger crusadechange set 3"},"color":"#09FF00"},{"text":"Mage","bold":true,"color":"#008805"},{"text":""},{"text":""}]}}

#kit stand items
execute as @e[x=0,type=armor_stand,tag=BlueKit] run function custom:team/join_blue
execute as @e[x=0,type=armor_stand,tag=YellowKit] run function custom:team/join_yellow

execute as @e[x=0,type=armor_stand,tag=KnightStand] run loot replace entity @s armor.feet loot items:armor/crusade_kits/knight/boots
execute as @e[x=0,type=armor_stand,tag=KnightStand] run loot replace entity @s armor.legs loot items:armor/crusade_kits/knight/leggings
execute as @e[x=0,type=armor_stand,tag=KnightStand] run loot replace entity @s armor.chest loot items:armor/crusade_kits/knight/chestplate
execute as @e[x=0,type=armor_stand,tag=KnightStand] run loot replace entity @s armor.head loot items:armor/crusade_kits/knight/helmet
execute as @e[x=0,type=armor_stand,tag=KnightStand] run loot replace entity @s weapon.mainhand loot items:misc/knight_sword
execute as @e[x=0,type=armor_stand,tag=KnightStand] run loot replace entity @s weapon.offhand loot items:misc/knight_shield

execute as @e[x=0,type=armor_stand,tag=ArcherStand] run loot replace entity @s armor.feet loot items:armor/crusade_kits/archer/boots
execute as @e[x=0,type=armor_stand,tag=ArcherStand] run loot replace entity @s armor.legs loot items:armor/crusade_kits/archer/leggings
execute as @e[x=0,type=armor_stand,tag=ArcherStand] run loot replace entity @s armor.chest loot items:armor/crusade_kits/archer/chestplate
execute as @e[x=0,type=armor_stand,tag=ArcherStand] run loot replace entity @s armor.head loot items:armor/crusade_kits/archer/helmet
execute as @e[x=0,type=armor_stand,tag=ArcherStand] run loot replace entity @s weapon.mainhand loot items:misc/shooting_saber

execute as @e[x=0,type=armor_stand,tag=MageStand] run loot replace entity @s armor.feet loot items:armor/crusade_kits/mage/boots
execute as @e[x=0,type=armor_stand,tag=MageStand] run loot replace entity @s armor.legs loot items:armor/crusade_kits/mage/leggings
execute as @e[x=0,type=armor_stand,tag=MageStand] run loot replace entity @s armor.chest loot items:armor/crusade_kits/mage/chestplate
execute as @e[x=0,type=armor_stand,tag=MageStand] run loot replace entity @s armor.head loot items:armor/crusade_kits/mage/helmet
execute as @e[x=0,type=armor_stand,tag=MageStand] run loot replace entity @s weapon.mainhand loot items:misc/spell_wand

execute as @e[x=0,type=armor_stand,tag=KitSelect] run data merge entity @s {DisabledSlots:4144959}

#> Kit stand light blocks
fill 15 64 -64 13 67 -62 light[level=0] replace air
fill 13 64 -63 11 67 -61 light[level=0] replace air
fill 11 64 -64 9 67 -62 light[level=0] replace air
fill 15 64 64 13 67 62 light[level=0] replace air
fill 13 64 63 11 67 61 light[level=0] replace air
fill 11 64 64 9 67 62 light[level=0] replace air

function rr_crusade:arenaclear/pathways

#Obsidian placement - Blue and Yellow
fill 14 63 66 10 63 66 obsidian
fill 13 63 65 11 63 65 obsidian
setblock 14 63 66 obsidian
setblock 10 63 66 obsidian
setblock 12 63 64 obsidian
fill 13 65 67 11 65 67 obsidian
setblock 12 66 67 obsidian
fill 11 63 -65 13 63 -66 obsidian
setblock 12 63 -64 obsidian
setblock 10 63 -66 obsidian
setblock 14 63 -66 obsidian
fill 11 65 -67 13 65 -67 obsidian
setblock 12 66 -67 obsidian
