##Gives executor a Rifter
#Antidupe check
execute store result score @s HasRift run clear @s salmon_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasRift %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasRift=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasRift 0

#Title/giving
title @s[scores={HasRift=1..},tag=!fullHotbar,tag=!BackRift] actionbar {"text":"Rifter already obtained.","color":"aqua"}
title @s[scores={HasRift=0},tag=!fullHotbar,tag=!BackRift] actionbar {"text":"Rifter obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasRift=0},tag=!fullHotbar] salmon_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Rifter","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"34","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"YZEROgame, Chronos22,","color":"red"}]','{"text":"& 69thAmendment","color":"red"}','{"text":" ","color":"gray"}','{"text":"The Rifter is a observer-engine","color":"gray"}','{"text":"missile with plenty of TNT to tear","color":"gray"}','{"text":"a rift in the enemy base.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowRift']}} 1
give @s[team=Blue,scores={HasRift=0},tag=!fullHotbar] salmon_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Rifter","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"34","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"YZEROgame, Chronos22,","color":"red"}]','{"text":"69thAmendment","color":"red"}','{"text":" ","color":"gray"}','{"text":"The Rifter is a observer-engine","color":"gray"}','{"text":"missile with plenty of TNT to tear","color":"gray"}','{"text":"a rift in the enemy base.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueRift']}} 1

#Game tracking
execute unless entity @s[tag=BackRift] run tag @e[tag=Selection,type=armor_stand] add givenRift
execute unless entity @s[tag=BackRift] run tag @e[tag=Bot,type=armor_stand] add BotHasRift