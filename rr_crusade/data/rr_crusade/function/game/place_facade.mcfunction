execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run return fail

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
execute unless predicate game:gamemode_components/red_for_blue run fill -99 200 73 -101 202 73 blue_stained_glass
execute if predicate game:gamemode_components/red_for_blue run fill -99 200 73 -101 202 73 red_stained_glass
execute unless predicate game:gamemode_components/red_for_blue run fill -91 200 73 -89 202 73 blue_stained_glass
execute if predicate game:gamemode_components/red_for_blue run fill -91 200 73 -89 202 73 red_stained_glass
fill -94 198 91 -96 200 94 minecraft:crying_obsidian
fill -96 198 65 -94 200 62 minecraft:crying_obsidian

#Set pre-game kit stands
#blue
summon minecraft:armor_stand -93.4 202 64 {Tags:["facade_entity","CrusadeEntity","KitSelect","KnightStand","BlueKit"],Rotation:[180,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{RightArm:[321,0,0]}}
summon minecraft:armor_stand -95 202 64 {Tags:["facade_entity","CrusadeEntity","KitSelect","ArcherStand","BlueKit"],Rotation:[180,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[0,0,353],RightLeg:[12,0,0],LeftArm:[270,68,0],RightArm:[274,346,0]}}
summon minecraft:armor_stand -95.6 202 64 {Tags:["facade_entity","CrusadeEntity","KitSelect","MageStand","BlueKit"],Rotation:[180,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[345,0,0],LeftLeg:[323,0,0],RightLeg:[38,0,0],LeftArm:[23,0,0],RightArm:[215,0,0]}}
setblock -94 202 63 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 1"}},{bold:true,color:"#008805",text:"Knight"},""]}} strict
setblock -95 202 63 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 2"}},{bold:true,color:"#008805",text:"Archer"},""]}} strict
setblock -96 202 63 minecraft:oak_wall_sign[facing=north]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 3"}},{bold:true,color:"#008805",text:"Mage"},""]}} strict
summon minecraft:text_display -93.4 204.125 64 {Tags:["facade_entity"],billboard:"center",text:{bold:true,color:"dark_green",text:"Knight"},background:0}
summon minecraft:text_display -95 204.125 64 {Tags:["facade_entity"],billboard:"center",text:{bold:true,color:"red",text:"Archer"},background:0}
summon minecraft:text_display -95.6 204.125 64 {Tags:["facade_entity"],billboard:"center",text:{bold:true,color:"dark_purple",text:"Mage"},background:0}
#yellow
summon minecraft:armor_stand -95.6 202 92 {Tags:["facade_entity","CrusadeEntity","KitSelect","KnightStand","YellowKit"],Rotation:[0,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{RightArm:[321,0,0]}}
summon minecraft:armor_stand -95 202 92 {Tags:["facade_entity","CrusadeEntity","KitSelect","ArcherStand","YellowKit"],Rotation:[0,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[0,0,353],RightLeg:[12,0,0],LeftArm:[270,68,0],RightArm:[274,346,0]}}
summon minecraft:armor_stand -93.4 202 92 {Tags:["facade_entity","CrusadeEntity","KitSelect","MageStand","YellowKit"],Rotation:[0,0],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Head:[345,0,0],LeftLeg:[323,0,0],RightLeg:[38,0,0],LeftArm:[23,0,0],RightArm:[215,0,0]}}
setblock -96 202 93 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 1"}},{bold:true,color:"#008805",text:"Knight"},""]}} strict
setblock -95 202 93 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 2"}},{bold:true,color:"#008805",text:"Archer"},""]}} strict
setblock -94 202 93 minecraft:oak_wall_sign[facing=south]{front_text:{color:"gray",has_glowing_text:true,messages:["",{color:"#09FF00",text:"Select Kit:",click_event:{action:"run_command",command:"trigger crusadechange set 3"}},{bold:true,color:"#008805",text:"Mage"},""]}} strict
summon minecraft:text_display -95.6 204.125 92 {Tags:["facade_entity"],billboard:"center",text:{bold:true,color:"dark_green",text:"Knight"},background:0}
summon minecraft:text_display -95 204.125 92 {Tags:["facade_entity"],billboard:"center",text:{bold:true,color:"red",text:"Archer"},background:0}
summon minecraft:text_display -93.4 204.125 92 {Tags:["facade_entity"],billboard:"center",text:{bold:true,color:"dark_purple",text:"Mage"},background:0}
#Text
summon text_display -94.5 204.75 64.5 {Tags:["facade_entity","CrusadeEntity","KitMessage"],Rotation:[180,0],text:"Click a sign to select a kit!"}
summon text_display -94.5 204.75 92.5 {Tags:["facade_entity","CrusadeEntity","KitMessage"],Rotation:[0,0],text:"Click a sign to select a kit!"}

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

#Pregame indestructible pathways
fill -96 201 96 -94 201 95 obsidian
setblock -97 201 96 reinforced_deepslate
setblock -96 201 95 reinforced_deepslate
setblock -93 201 96 reinforced_deepslate
setblock -94 201 95 reinforced_deepslate
fill -100 201 94 -90 201 94 bedrock
setblock -92 201 94 reinforced_deepslate
setblock -95 201 94 reinforced_deepslate
setblock -98 201 94 reinforced_deepslate
setblock -98 201 93 bedrock
setblock -95 201 93 bedrock
setblock -92 201 93 bedrock

fill -94 201 60 -96 201 61 obsidian
setblock -93 201 60 reinforced_deepslate
setblock -94 201 61 reinforced_deepslate
setblock -96 201 61 reinforced_deepslate
setblock -97 201 60 reinforced_deepslate
fill -90 201 62 -100 201 62 bedrock
setblock -92 201 62 reinforced_deepslate
setblock -95 201 62 reinforced_deepslate
setblock -98 201 62 reinforced_deepslate
setblock -92 201 63 bedrock
setblock -95 201 63 bedrock
setblock -98 201 63 bedrock
