title @s[scores={HasGuard=1..},tag=!fullHotbar] actionbar {"text":"Elder Guardian already obtained.","color":"aqua"}
title @s[scores={HasGuard=0},tag=!fullHotbar] actionbar {"text":"Elder Guardian obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasGuard=0},tag=!fullHotbar] elder_guardian_spawn_egg{Team:['Yellow'],display:{Name:'[{"text":"Deploy: ","color":"green","bold":"true"},{"text":"Elder Guardian","color":"gold","bold":"true"}]'},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','yellowmissile','YellowGuard'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1
give @s[team=Blue,scores={HasGuard=0},tag=!fullHotbar] elder_guardian_spawn_egg{Team:['Blue'],display:{Name:'[{"text":"Deploy: ","color":"green","bold":"true"},{"text":"Elder Guardian","color":"blue","bold":"true"}]'},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','bluemissile','BlueGuard'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1