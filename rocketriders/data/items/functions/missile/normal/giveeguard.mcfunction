##Gives executor an Elder Guardian
#Antidupe check
execute store result score @s HasGuard run clear @s elder_guardian_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasGuard %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasGuard=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasGuard 0

#Title/giving
title @s[scores={HasGuard=1..},tag=!fullHotbar,tag=!BackGuard] actionbar {"text":"Elder Guardian already obtained.","color":"aqua"}
execute as @s[scores={HasGuard=1..},tag=!fullHotbar,tag=!BackGuard] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1
title @s[scores={HasGuard=0},tag=!fullHotbar,tag=!BackGuard] actionbar {"text":"Elder Guardian obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasGuard=0},tag=!fullHotbar] elder_guardian_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Elder Guardian","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"9","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"1.7m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Rubix_One","color":"red"}]','{"text":" ","color":"gray"}','{"text":"An upgrade from the original Guardian","color":"gray"}','{"text":"in Missile Wars, the Elder Guardian is","color":"gray"}','{"text":"bigger and covers the TNT better.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowGuard']}} 1
give @s[team=Blue,scores={HasGuard=0},tag=!fullHotbar] elder_guardian_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Elder Guardian","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"9","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"1.7m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Rubix_One","color":"red"}]','{"text":" ","color":"gray"}','{"text":"An upgrade from the original Guardian","color":"gray"}','{"text":"in Missile Wars, the Elder Guardian is","color":"gray"}','{"text":"bigger and covers the TNT better.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueGuard']}} 1

#Game tracking
execute unless entity @s[tag=BackGuard] run tag @e[tag=Selection,type=armor_stand] add givenGuard
execute unless entity @s[tag=BackGuard] run tag @e[tag=Bot,type=armor_stand] add BotHasGuard