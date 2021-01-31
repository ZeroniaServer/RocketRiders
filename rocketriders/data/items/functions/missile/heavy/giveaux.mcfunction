##Gives executor an Auxiliary
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasAux run clear @s mooshroom_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasAux 0

#Title/giving
title @s[scores={HasAux=1..},tag=!fullHotbar,tag=!BackAux] actionbar {"text":"Auxiliary already obtained.","color":"aqua"}
title @s[scores={HasAux=0},tag=!fullHotbar,tag=!BackAux] actionbar {"text":"Auxiliary obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasAux=0},tag=!fullHotbar] mooshroom_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Auxiliary","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"25","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Auxiliary is a heavy missile.","color":"gray"}','{"text":"This missile has 6 triggers in it,","color":"gray"}','{"text":"making it risky to defuse.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAux']}} 1
give @s[team=Blue,scores={HasAux=0},tag=!fullHotbar] mooshroom_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Auxiliary","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"25","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Auxiliary is a heavy missile.","color":"gray"}','{"text":"This missile has 6 triggers in it,","color":"gray"}','{"text":"making it risky to defuse.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueAux']}} 1

#Game tracking
execute unless entity @s[tag=BackAux] run tag @e[tag=Selection,type=armor_stand] add givenAux
execute unless entity @s[tag=BackAux] run tag @e[tag=Bot,type=armor_stand] add BotHasAux