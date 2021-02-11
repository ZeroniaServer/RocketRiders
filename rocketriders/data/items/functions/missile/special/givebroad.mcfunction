##Gives executor a Broadsword
#Antidupe check
execute store result score @s HasBroad run clear @s magma_cube_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasBroad %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasBroad=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasBroad 0

#Title/giving
title @s[scores={HasBroad=1..},tag=!fullHotbar,tag=!BackBroad] actionbar {"text":"Broadsword already obtained.","color":"light_purple"}
title @s[scores={HasBroad=0},tag=!fullHotbar,tag=!BackBroad] actionbar {"text":"Broadsword obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasBroad=0},tag=!fullHotbar] magma_cube_spawn_egg{display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":"true"},{"text":"Broadsword","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"23","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"3.3m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"IndigoLaser","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Broadsword is a fast and powerful","color":"gray"}','{"text":"missile that lights lots of TNT on impact.","color":"gray"}','{"text":"It\'s like three Swords combined!","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowBroad']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasBroad=0},tag=!fullHotbar] magma_cube_spawn_egg{display:{Name:'[{"text":"[Special] ","color":"dark_purple","bold":"true"},{"text":"Broadsword","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"23","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"3.3m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"IndigoLaser","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Broadsword is a fast and powerful","color":"gray"}','{"text":"missile that lights lots of TNT on impact.","color":"gray"}','{"text":"It\'s like three Swords combined!","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueBroad']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1

#Game tracking
execute unless entity @s[tag=BackBroad] run tag @e[tag=Selection,type=armor_stand] add givenBroad