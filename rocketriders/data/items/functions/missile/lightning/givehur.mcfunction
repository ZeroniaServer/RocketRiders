title @s[scores={HasHur=1..},tag=!fullHotbar] actionbar {"text":"Hurricane already obtained.","color":"aqua"}
title @s[scores={HasHur=0},tag=!fullHotbar] actionbar {"text":"Hurricane obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{display:{Name:'[{"text":"Deploy: ","color":"yellow","bold":"true"},{"text":"Hurricane","color":"gold","bold":"true"}]'},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','yellowmissile','YellowHur'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1
give @s[team=Blue,scores={HasHur=0},tag=!fullHotbar] drowned_spawn_egg{display:{Name:'[{"text":"Deploy: ","color":"yellow","bold":"true"},{"text":"Hurricane","color":"blue","bold":"true"}]'},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','bluemissile','BlueHur'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1