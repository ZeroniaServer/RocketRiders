##Gives executor a Hurricane
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasHur run clear @s drowned_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasHur 0

#Title/giving
title @s[scores={HasHur=1..},tag=!fullHotbar,tag=!BackHur] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
title @s[scores={HasHur=0},tag=!fullHotbar,tag=!BackHur] actionbar {"text":"Hurricane obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":"true"},{"text":"Hurricane","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"18","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"3.3m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"HolyToiletPaper","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Hurricane is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"It might be harder to get on this one.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowHur']}} 1
give @s[team=Blue,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":"true"},{"text":"Hurricane","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"18","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"3.3m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"HolyToiletPaper","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Hurricane is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"It might be harder to get on this one.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueHur']}} 1

#Game tracking
execute unless entity @s[tag=BackHur] run tag @e[tag=Selection,type=armor_stand] add givenHur
execute unless entity @s[tag=BackHur] run tag @e[tag=Bot,type=armor_stand] add BotHasHur