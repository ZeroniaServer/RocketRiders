##Gives executor a Rifter
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasRift run clear @s salmon_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasRift 0

#Title/giving
title @s[scores={HasRift=1..},tag=!fullHotbar] actionbar {"text":"Rifter already obtained.","color":"aqua"}
title @s[scores={HasRift=0},tag=!fullHotbar] actionbar {"text":"Rifter obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasRift=0},tag=!fullHotbar] salmon_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Rifter","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"34","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"YZEROgame, 69thAmendment, &","color":"gray"}','{"text":"Chronos22","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Rifter is a observer","color":"gray"}','{"text":"engine missile with plenty","color":"gray"}','{"text":"of TNT to blow up a portal.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowRift']}} 1
give @s[team=Blue,scores={HasRift=0},tag=!fullHotbar] salmon_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Rifter","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"34","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"YZEROgame, 69thAmendment, &","color":"gray"}','{"text":"Chronos22","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Rifter is a observer","color":"gray"}','{"text":"engine missile with plenty","color":"gray"}','{"text":"of TNT to blow up a portal.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueRift']}} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenRift
tag @e[tag=Bot,type=armor_stand] add BotHasRift