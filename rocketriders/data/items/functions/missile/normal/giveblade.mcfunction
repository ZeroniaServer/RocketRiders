title @s[scores={HasBlade=1..},tag=!fullHotbar] actionbar {"text":"Blade already obtained.","color":"aqua"}
title @s[scores={HasBlade=0},tag=!fullHotbar] actionbar {"text":"Blade obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasBlade=0},tag=!fullHotbar] husk_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Blade","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"14","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Rubix_One","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Blade is a sword-shaped missile.","color":"gray"}','{"text":"Breaking the slime block on the side","color":"gray"}','{"text":"will drop down 3 bomber TNT below it.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowBlade']}} 1
give @s[team=Blue,scores={HasBlade=0},tag=!fullHotbar] husk_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Blade","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"14","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Rubix_One","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Blade is a sword-shaped missile.","color":"gray"}','{"text":"Breaking the slime block on the side","color":"gray"}','{"text":"will drop down 3 bomber TNT below it.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueBlade']}} 1

tag @e[tag=Selection] add givenBlade

tag @e[tag=Bot] add BotHasBlade