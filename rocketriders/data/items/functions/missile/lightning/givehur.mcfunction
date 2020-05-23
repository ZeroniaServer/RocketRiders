title @s[scores={HasHur=1..},tag=!fullHotbar] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
title @s[scores={HasHur=0},tag=!fullHotbar] actionbar {"text":"Hurricane obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":"true"},{"text":"Hurricane","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"18","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Rubix_One","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Hurricane is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"It might be harder to get on this one.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Duration:100,Radius:0f,RadiusPerTick:-1f,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','yellowmissile','YellowHur'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1
give @s[team=Blue,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{display:{Name:'[{"text":"[Lightning] ","color":"yellow","bold":"true"},{"text":"Hurricane","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"18","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Rubix_One","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Hurricane is a lightning-speed missile.","color":"gray"}','{"text":"Fittingly, it flies faster than most missiles.","color":"gray"}','{"text":"It might be harder to get on this one.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Duration:100,Radius:0f,RadiusPerTick:-1f,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','bluemissile','BlueHur'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1

tag @e[tag=Selection] add givenHur