##Gives executor a Thunderbolt
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasBolt run clear @s vex_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBolt 0

#Title/giving
title @s[scores={HasBolt=1..},tag=!fullHotbar,tag=!BackBolt] actionbar {"text":"Thunderbolt already obtained.","color":"aqua"}
title @s[scores={HasBolt=0},tag=!fullHotbar,tag=!BackBolt] actionbar {"text":"Thunderbolt obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasBolt=0},tag=!fullHotbar] vex_spawn_egg{display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":"true"},{"text":"Thunderbolt","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"15","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Rubix_One","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Thunderbolt is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"Breaking too much TNT may stop the missile.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowBolt']}} 1
give @s[team=Blue,scores={HasBolt=0},tag=!fullHotbar] vex_spawn_egg{display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":"true"},{"text":"Thunderbolt","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"15","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Rubix_One","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Thunderbolt is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"Breaking too much TNT may stop the missile.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueBolt']}} 1

#Game tracking
execute unless entity @s[tag=BackBolt] run tag @e[tag=Selection,type=armor_stand] add givenBolt
execute unless entity @s[tag=BackBolt] run tag @e[tag=Bot,type=armor_stand] add BotHasBolt