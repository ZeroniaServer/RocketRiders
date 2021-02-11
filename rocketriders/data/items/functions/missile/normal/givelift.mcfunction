##Gives executor a Lifter
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasLift run clear @s dolphin_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasLift 0

#Title/giving
title @s[scores={HasLift=1..},tag=!fullHotbar,tag=!BackLift] actionbar {"text":"Lifter already obtained.","color":"aqua"}
title @s[scores={HasLift=0},tag=!fullHotbar,tag=!BackLift] actionbar {"text":"Lifter obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasLift=0},tag=!fullHotbar] dolphin_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Lifter","color":"gold","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"8","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Chronos22","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Lifter lifts its warhead","color":"gray"}','{"text":"up by 3 blocks when it hits","color":"gray"}','{"text":"an obstacle.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowLift']}} 1
give @s[team=Blue,scores={HasLift=0},tag=!fullHotbar] dolphin_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Lifter","color":"blue","bold":"true"}]',Lore:['[{"text":"Amount of TNT: ","color":"gray"},{"text":"8","color":"red"}]','[{"text":"Speed: ","color":"gray"},{"text":"2.0m/s","color":"red"}]','[{"text":"Made by: ","color":"gray"},{"text":"Chronos22","color":"red"}]','{"text":" ","color":"gray"}','{"text":"The Lifter lifts its warhead","color":"gray"}','{"text":"up by 3 blocks when it hits","color":"gray"}','{"text":"an obstacle.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueLift']}} 1

#Game tracking
execute unless entity @s[tag=BackLift] run tag @e[tag=Selection,type=armor_stand] add givenLift
execute unless entity @s[tag=BackLift] run tag @e[tag=Bot,type=armor_stand] add BotHasLift