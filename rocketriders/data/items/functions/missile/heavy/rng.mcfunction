execute if entity @e[tag=Selection,tag=rngAux] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngAux","rng3"]}
execute if entity @e[tag=Selection,tag=rngBull] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBull","rng3"]}
execute if entity @e[tag=Selection,tag=rngJbuster] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngJbuster","rng3"]}
execute if entity @e[tag=Selection,tag=rngWar] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngWar","rng3"]}
tag @e[tag=rng3,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngAux] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giveaux
execute as @e[tag=rngSelected,tag=rngBull] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givebull
execute as @e[tag=rngSelected,tag=rngJbuster] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givejbuster
execute as @e[tag=rngSelected,tag=rngWar] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givewar