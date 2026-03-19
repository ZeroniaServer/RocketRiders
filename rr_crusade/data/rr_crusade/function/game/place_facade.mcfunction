execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run return fail

#> Crystals
function rr_crusade:game/place_facade/crystals_blue with storage rocketriders:teams blue.color_palette
function rr_crusade:game/place_facade/crystals_yellow with storage rocketriders:teams yellow.color_palette

## Portal area
fill -94 198 91 -96 200 94 minecraft:crying_obsidian
fill -96 198 65 -94 200 62 minecraft:crying_obsidian

## Banners
execute if predicate game:blue_team_skin/blue run setblock -89 203 65 minecraft:blue_banner[rotation=6]{components:{},patterns:[{color:"light_blue",pattern:"minecraft:flow"},{color:"light_blue",pattern:"minecraft:border"}]}
execute if predicate game:blue_team_skin/blue run setblock -101 203 65 minecraft:blue_banner[rotation=10]{components:{},patterns:[{color:"light_blue",pattern:"minecraft:flow"},{color:"light_blue",pattern:"minecraft:border"}]}
execute if predicate game:blue_team_skin/blue run setblock -98 199 66 minecraft:blue_wall_banner[facing=south]{components:{},patterns:[{color:"light_blue",pattern:"minecraft:flow"},{color:"light_blue",pattern:"minecraft:border"}]}
execute if predicate game:blue_team_skin/blue run setblock -92 199 66 minecraft:blue_wall_banner[facing=south]{components:{},patterns:[{color:"light_blue",pattern:"minecraft:flow"},{color:"light_blue",pattern:"minecraft:border"}]}
execute if predicate game:blue_team_skin/any_red_skin run setblock -89 203 65 minecraft:red_banner[rotation=6]{components:{},patterns:[{color:"pink",pattern:"minecraft:flow"},{color:"pink",pattern:"minecraft:border"}]}
execute if predicate game:blue_team_skin/any_red_skin run setblock -101 203 65 minecraft:red_banner[rotation=10]{components:{},patterns:[{color:"pink",pattern:"minecraft:flow"},{color:"pink",pattern:"minecraft:border"}]}
execute if predicate game:blue_team_skin/any_red_skin run setblock -98 199 66 minecraft:red_wall_banner[facing=south]{components:{},patterns:[{color:"pink",pattern:"minecraft:flow"},{color:"pink",pattern:"minecraft:border"}]}
execute if predicate game:blue_team_skin/any_red_skin run setblock -92 199 66 minecraft:red_wall_banner[facing=south]{components:{},patterns:[{color:"pink",pattern:"minecraft:flow"},{color:"pink",pattern:"minecraft:border"}]}

execute if predicate game:yellow_team_skin/yellow run setblock -101 203 91 minecraft:yellow_banner[rotation=14]{components:{},patterns:[{color:"orange",pattern:"minecraft:flower"},{color:"orange",pattern:"minecraft:border"}]}
execute if predicate game:yellow_team_skin/yellow run setblock -89 203 91 minecraft:yellow_banner[rotation=2]{components:{},patterns:[{color:"orange",pattern:"minecraft:flower"},{color:"orange",pattern:"minecraft:border"}]}
execute if predicate game:yellow_team_skin/yellow run setblock -92 199 90 minecraft:yellow_wall_banner[facing=north]{components:{},patterns:[{color:"orange",pattern:"minecraft:flower"},{color:"orange",pattern:"minecraft:border"}]}
execute if predicate game:yellow_team_skin/yellow run setblock -98 199 90 minecraft:yellow_wall_banner[facing=north]{components:{},patterns:[{color:"orange",pattern:"minecraft:flower"},{color:"orange",pattern:"minecraft:border"}]}
execute if predicate game:yellow_team_skin/green run setblock -101 203 91 minecraft:green_banner[rotation=14]{components:{},patterns:[{color:"lime",pattern:"minecraft:flower"},{color:"lime",pattern:"minecraft:border"}]}
execute if predicate game:yellow_team_skin/green run setblock -89 203 91 minecraft:green_banner[rotation=2]{components:{},patterns:[{color:"lime",pattern:"minecraft:flower"},{color:"lime",pattern:"minecraft:border"}]}
execute if predicate game:yellow_team_skin/green run setblock -92 199 90 minecraft:green_wall_banner[facing=north]{components:{},patterns:[{color:"lime",pattern:"minecraft:flower"},{color:"lime",pattern:"minecraft:border"}]}
execute if predicate game:yellow_team_skin/green run setblock -98 199 90 minecraft:green_wall_banner[facing=north]{components:{},patterns:[{color:"lime",pattern:"minecraft:flower"},{color:"lime",pattern:"minecraft:border"}]}

## Kit Armor Stands & Signs
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
