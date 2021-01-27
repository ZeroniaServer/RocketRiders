##Gives executor a Hypersonic
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasHyper run clear @s turtle_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasHyper 0

#Title/giving
title @s[scores={HasHyper=1..},tag=!fullHotbar] actionbar {"text":"Hypersonic already obtained.","color":"light_purple"}
title @s[scores={HasHyper=0},tag=!fullHotbar] actionbar {"text":"Hypersonic obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasHyper=0},tag=!fullHotbar] turtle_spawn_egg{display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":"true"},{"text":"Hypersonic","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"6","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"IndigoLaser","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Hypersonic is the fastest missile in the game.","color":"gray"}','{"text":"It might be very hard to get on this one!","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowHyper']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasHyper=0},tag=!fullHotbar] turtle_spawn_egg{display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":"true"},{"text":"Hypersonic","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"6","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"IndigoLaser","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Hypersonic is the fastest missile in the game.","color":"gray"}','{"text":"It might be very hard to get on this one!","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueHyper']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenHyper