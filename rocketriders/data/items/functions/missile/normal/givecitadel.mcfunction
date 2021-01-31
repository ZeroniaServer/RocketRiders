##Gives executor a Citadel
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasCitadel run clear @s wandering_trader_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasCitadel 0

#Title/giving
title @s[scores={HasCitadel=1..},tag=!fullHotbar,tag=!BackCitadel] actionbar {"text":"Citadel already obtained.","color":"aqua"}
title @s[scores={HasCitadel=0},tag=!fullHotbar,tag=!BackCitadel] actionbar {"text":"Citadel obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasCitadel=0},tag=!fullHotbar] wandering_trader_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Citadel","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"16","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Citadel is good for surprise attacks.","color":"gray"}','{"text":"You can climb inside of the missile using","color":"gray"}','{"text":"the trapdoor on top of it.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowCitadel']}} 1
give @s[team=Blue,scores={HasCitadel=0},tag=!fullHotbar] wandering_trader_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Citadel","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"16","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Citadel is good for surprise attacks.","color":"gray"}','{"text":"You can climb inside of the missile using","color":"gray"}','{"text":"the trapdoor on top of it.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueCitadel']}} 1

#Game tracking
execute unless entity @s[tag=BackCitadel] run tag @e[tag=Selection,type=armor_stand] add givenCita
execute unless entity @s[tag=BackCitadel] run tag @e[tag=Bot,type=armor_stand] add BotHasCita