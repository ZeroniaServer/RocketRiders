execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run return fail

#> Restore glass when game starts
kill @e[x=0,type=marker,tag=crusadeWall]
execute unless entity @e[x=0,type=marker,tag=crusadeWall,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["crusadeWall"]}
execute as @e[x=0,type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement
function rr_crusade:game/glassplacement
scoreboard players set @e[x=0,type=marker,tag=crusadeWall] CmdData 20

#> Blue
#Objectives
#Main
fill 20 45 52 4 55 66 minecraft:crying_obsidian
#A
fill 41 52 -39 35 52 -37 bedrock
execute positioned 36 47 -39 run function rr_crusade:game/crystal_glass_dynamic_fill with storage rocketriders:teams blue.color_palette
fill 36 51 -40 40 47 -40 light[level=1]
#B
fill -11 52 -39 -17 52 -37 bedrock
execute positioned -16 47 -39 run function rr_crusade:game/crystal_glass_dynamic_fill with storage rocketriders:teams blue.color_palette
fill -16 51 -40 -12 47 -40 light[level=1]

#> Yellow
#Objectives
#Main
fill 4 55 -52 20 45 -66 minecraft:crying_obsidian
#A
fill -17 52 39 -11 52 37 bedrock
execute positioned -16 47 35 run function rr_crusade:game/crystal_glass_dynamic_fill with storage rocketriders:teams yellow.color_palette
fill -16 51 40 -12 47 40 light[level=1]
#B
fill 35 52 39 41 52 37 bedrock
execute positioned 36 47 35 run function rr_crusade:game/crystal_glass_dynamic_fill with storage rocketriders:teams yellow.color_palette
fill 36 51 40 40 47 40 light[level=1]

#> prepare crystals and health
scoreboard players set $YellowShield crusadehp 200
scoreboard players set $CYA crusadehp 100
scoreboard players set $CYB crusadehp 100
scoreboard players set $CYAcd crusadehp 0
scoreboard players set $CYBcd crusadehp 0
scoreboard players set $CYAprecd crusadehp 0
scoreboard players set $CYBprecd crusadehp 0
function rr_crusade:game/place_crystal/yellow_a
function rr_crusade:game/place_crystal/yellow_b

scoreboard players set $BlueShield crusadehp 200
scoreboard players set $CBA crusadehp 100
scoreboard players set $CBB crusadehp 100
scoreboard players set $CBAcd crusadehp 0
scoreboard players set $CBBcd crusadehp 0
scoreboard players set $CBAprecd crusadehp 0
scoreboard players set $CBBprecd crusadehp 0
function rr_crusade:game/place_crystal/blue_a
function rr_crusade:game/place_crystal/blue_b

# Set in-game kit stands
#blue
fill 14 63 -63 14 64 -63 minecraft:obsidian
summon minecraft:armor_stand 14 65 -63 {Tags:["CrusadeEntity","KitSelect","KnightStand","BlueKit"],Rotation:[180,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{RightArm:[321.0f,0.0f,0.0f]}}
summon minecraft:text_display 14 67.125 -63 {Tags:["CrusadeEntity","KitSelect","KnightStand","BlueKit"],billboard:"center",text:{bold:true,color:"dark_green",text:"Knight"},background:0}
setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 1"}},{bold:true,color:"#008805",text:"Knight"},""]}}
fill 12 63 -62 12 64 -62 minecraft:obsidian
summon minecraft:armor_stand 12 65 -62 {Tags:["CrusadeEntity","KitSelect","ArcherStand","BlueKit"],Rotation:[180,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[0.0f,0.0f,353.0f],RightLeg:[12.0f,0.0f,0.0f],LeftArm:[270.0f,68.0f,0.0f],RightArm:[274.0f,346.0f,0.0f]}}
summon minecraft:text_display 12 67.125 -62 {Tags:["CrusadeEntity","KitSelect","ArcherStand","BlueKit"],billboard:"center",text:{bold:true,color:"red",text:"Archer"},background:0}
setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 2"}},{bold:true,color:"#008805",text:"Archer"},""]}}
fill 10 63 -63 10 64 -63 minecraft:obsidian
summon minecraft:armor_stand 10 65 -63 {Tags:["CrusadeEntity","KitSelect","MageStand","BlueKit"],Rotation:[180,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[345.0f,0.0f,0.0f],LeftLeg:[323.0f,0.0f,0.0f],RightLeg:[38.0f,0.0f,0.0f],LeftArm:[23.0f,0.0f,0.0f],RightArm:[215.0f,0.0f,0.0f]}}
summon minecraft:text_display 10 67.125 -63 {Tags:["CrusadeEntity","KitSelect","MageStand","BlueKit"],billboard:"center",text:{bold:true,color:"dark_purple",text:"Mage"},background:0}
setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 3"}},{bold:true,color:"#008805",text:"Mage"},""]}}
#yellow
fill 14 63 63 14 64 63 minecraft:obsidian
summon minecraft:armor_stand 10 65 63 {Tags:["CrusadeEntity","KitSelect","KnightStand","YellowKit"],Rotation:[0,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{RightArm:[321.0f,0.0f,0.0f]}}
summon minecraft:text_display 10 67.125 63 {Tags:["CrusadeEntity","KitSelect","KnightStand","YellowKit"],billboard:"center",text:{bold:true,color:"dark_green",text:"Knight"},background:0}
setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 1"}},{bold:true,color:"#008805",text:"Knight"},""]}}
fill 12 63 62 12 64 62 minecraft:obsidian
summon minecraft:armor_stand 12 65 62 {Tags:["CrusadeEntity","KitSelect","ArcherStand","YellowKit"],Rotation:[0,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[0.0f,0.0f,353.0f],RightLeg:[12.0f,0.0f,0.0f],LeftArm:[270.0f,68.0f,0.0f],RightArm:[274.0f,346.0f,0.0f]}}
summon minecraft:text_display 12 67.125 62 {Tags:["CrusadeEntity","KitSelect","ArcherStand","YellowKit"],billboard:"center",text:{bold:true,color:"red",text:"Archer"},background:0}
setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 2"}},{bold:true,color:"#008805",text:"Archer"},""]}}
fill 10 63 63 10 64 63 minecraft:obsidian
summon minecraft:armor_stand 14 65 63 {Tags:["CrusadeEntity","KitSelect","MageStand","YellowKit"],Rotation:[0,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[345.0f,0.0f,0.0f],LeftLeg:[323.0f,0.0f,0.0f],RightLeg:[38.0f,0.0f,0.0f],LeftArm:[23.0f,0.0f,0.0f],RightArm:[215.0f,0.0f,0.0f]}}
summon minecraft:text_display 14 67.125 63 {Tags:["CrusadeEntity","KitSelect","MageStand","YellowKit"],billboard:"center",text:{bold:true,color:"dark_purple",text:"Mage"},background:0}
setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 3"}},{bold:true,color:"#008805",text:"Mage"},""]}}

#kit stand items
execute as @e[x=0,type=armor_stand,tag=BlueKit] run function custom:player/team/join_blue
execute as @e[x=0,type=armor_stand,tag=YellowKit] run function custom:player/team/join_yellow

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
fill 15 64 -64 13 67 -62 light[level=0] replace #custom:air
fill 13 64 -63 11 67 -61 light[level=0] replace #custom:air
fill 11 64 -64 9 67 -62 light[level=0] replace #custom:air
fill 15 64 64 13 67 62 light[level=0] replace #custom:air
fill 13 64 63 11 67 61 light[level=0] replace #custom:air
fill 11 64 64 9 67 62 light[level=0] replace #custom:air
