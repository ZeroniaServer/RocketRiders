##Gives executor a TomaTwo
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasToma run clear @s creeper_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasToma 0

#Title/giving
title @s[scores={HasToma=1..},tag=!fullHotbar,tag=!BackToma] actionbar {"text":"TomaTwo already obtained.","color":"aqua"}
title @s[scores={HasToma=0},tag=!fullHotbar,tag=!BackToma] actionbar {"text":"TomaTwo obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasToma=0},tag=!fullHotbar] creeper_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"TomaTwo","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"16","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"YZEROgame & Chronos22","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The TomaTwo is a missile inspired by","color":"gray"}','{"text":"the Tomahawk from Missile Wars. This","color":"gray"}','{"text":"missile uses an observer engine.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Duration:100,Radius:0f,RadiusPerTick:-1f,Radius:0f,RadiusPerTick:-1f,CustomNameVisible:0b,Tags:['missile','yellowmissile','YellowToma']}} 1
give @s[team=Blue,scores={HasToma=0},tag=!fullHotbar] creeper_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"TomaTwo","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"16","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"YZEROgame & Chronos22","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The TomaTwo is a missile inspired by","color":"gray"}','{"text":"the Tomahawk from Missile Wars. This","color":"gray"}','{"text":"missile uses an observer engine.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Duration:100,Radius:0f,RadiusPerTick:-1f,Radius:0f,RadiusPerTick:-1f,CustomNameVisible:0b,Tags:['missile','bluemissile','BlueToma']}} 1

#Game tracking
execute unless entity @s[tag=BackToma] run tag @e[tag=Selection,type=armor_stand] add givenToma
execute unless entity @s[tag=BackToma] run tag @e[tag=Bot,type=armor_stand] add BotHasToma