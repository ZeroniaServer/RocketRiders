##Gives executor a Nullifier
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasNull run clear @s phantom_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasNull 0

#Title/giving
title @s[scores={HasNull=1..},tag=!fullHotbar,tag=!BackNull] actionbar {"text":"Chronullifier already obtained.","color":"aqua"}
title @s[scores={HasNull=0},tag=!fullHotbar,tag=!BackNull] actionbar {"text":"Chronullifier obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasNull=0},tag=!fullHotbar] phantom_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Chronullifier","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"14","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Chronullifier uses a unique","color":"gray"}','{"text":"observer engine with the same","color":"gray"}','{"text":"speed as non-observer engines.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowNull']}} 1
give @s[team=Blue,scores={HasNull=0},tag=!fullHotbar] phantom_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Chronullifier","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"14","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Chronullifier uses a unique","color":"gray"}','{"text":"observer engine with the same","color":"gray"}','{"text":"speed as non-observer engines.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueNull']}} 1

#Game tracking
execute unless entity @s[tag=BackNull] run tag @e[tag=Selection,type=armor_stand] add givenNull
execute unless entity @s[tag=BackNull] run tag @e[tag=Bot,type=armor_stand] add BotHasNull