title @s[scores={HasAnt=1..},tag=!fullHotbar] actionbar {"text":"A.N.T. already obtained.","color":"aqua"}
title @s[scores={HasAnt=0},tag=!fullHotbar] actionbar {"text":"A.N.T. obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasAnt=0},tag=!fullHotbar] bat_spawn_egg{display:{Name:'[{"text":"Deploy: ","color":"green","bold":"true"},{"text":"A.N.T.","color":"gold","bold":"true"}]'},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','yellowmissile','YellowAnt'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1
give @s[team=Blue,scores={HasAnt=0},tag=!fullHotbar] bat_spawn_egg{display:{Name:'[{"text":"Deploy: ","color":"green","bold":"true"},{"text":"A.N.T.","color":"blue","bold":"true"}]'},EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:['missile','bluemissile','BlueAnt'],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}} 1