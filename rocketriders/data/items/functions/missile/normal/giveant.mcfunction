##Gives executor an A.N.T.
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasAnt run clear @s bat_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasAnt 0

#Title/giving
title @s[scores={HasAnt=1..},tag=!fullHotbar,tag=!BackAnt] actionbar {"text":"A.N.T. already obtained.","color":"aqua"}
title @s[scores={HasAnt=0},tag=!fullHotbar,tag=!BackAnt] actionbar {"text":"A.N.T. obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasAnt=0},tag=!fullHotbar] bat_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"A.N.T.","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"2","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.2m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Evtema3","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The A.N.T stands for Almost No TNT.","color":"gray"}','{"text":"It is one of the smallest functional","color":"gray"}','{"text":"missiles, made with only 2 TNT blocks.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAnt']}} 1
give @s[team=Blue,scores={HasAnt=0},tag=!fullHotbar] bat_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"A.N.T.","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"2","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.2m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Evtema3","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The A.N.T stands for Almost No TNT.","color":"gray"}','{"text":"It is one of the smallest functional","color":"gray"}','{"text":"missiles, made with only 2 TNT blocks.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueAnt']}} 1

#Game tracking
execute unless entity @s[tag=BackAnt] run tag @e[tag=Selection,type=armor_stand] add givenAnt
execute unless entity @s[tag=BackAnt] run tag @e[tag=Bot,type=armor_stand] add BotHasAnt