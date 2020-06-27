##Sub-sub-RNG for Heavy Missiles
#Choose between each missile based on enabled status and Tetris state
execute if entity @e[tag=Selection,tag=rngAux,tag=!givenAux] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngAux","rng3"]}
execute if entity @e[tag=Selection,tag=rngRift,tag=!givenRift] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngRift","rng3"]}
execute if entity @e[tag=Selection,tag=rngJbuster,tag=!givenJbust] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngJbuster","rng3"]}
execute if entity @e[tag=Selection,tag=rngWar,tag=!givenWar] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngWar","rng3"]}

#Select a missile and run appropriate give function
tag @e[tag=rng3,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngAux] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giveaux
execute as @e[tag=rngSelected,tag=rngRift] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/giverift
execute as @e[tag=rngSelected,tag=rngJbuster] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givejbuster
execute as @e[tag=rngSelected,tag=rngWar] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/heavy/givewar