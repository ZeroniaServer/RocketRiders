##Gives executor a Warhead
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasWar run clear @s silverfish_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasWar 0

#Title/giving
title @s[scores={HasWar=1..},tag=!fullHotbar,tag=!BackWar] actionbar {"text":"Warhead already obtained.","color":"aqua"}
title @s[scores={HasWar=0},tag=!fullHotbar,tag=!BackWar] actionbar {"text":"Warhead obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasWar=0},tag=!fullHotbar] silverfish_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Warhead","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"25","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"1.7m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Rubix_One","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Warhead is a Juggernaut-style missile.","color":"gray"}','{"text":"When the Warhead hits a wall, the piston on","color":"gray"}','{"text":"top of it will cover up the trigger TNT.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowWar']}} 1
give @s[team=Blue,scores={HasWar=0},tag=!fullHotbar] silverfish_spawn_egg{display:{Name:'[{"text":"[Heavy] ","color":"dark_red","bold":"true"},{"text":"Warhead","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"25","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"1.7m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Rubix_One","color":"red"}]','{"text":"The Warhead is a Juggernaut-style missile.","color":"gray"}','{"text":"When the Warhead hits a wall, the piston on","color":"gray"}','{"text":"top of it will cover up the trigger TNT.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueWar']}} 1

#Game tracking
execute unless entity @s[tag=BackWar] run tag @e[tag=Selection,type=armor_stand] add givenWar
execute unless entity @s[tag=BackWar] run tag @e[tag=Bot,type=armor_stand] add BotHasWar