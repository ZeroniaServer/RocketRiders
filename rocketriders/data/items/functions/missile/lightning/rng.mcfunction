##Sub-sub-RNG for Lightning Missiles
#Choose between each missile based on enabled status and Tetris state
execute if entity @e[tag=Selection,tag=rngHur,tag=!givenHur,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHur","rng3"]}
execute if entity @e[tag=Selection,tag=rngThun,tag=!givenBolt,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngThun","rng3"]}

#Select a missile and run appropriate give function
tag @e[tag=rng3,sort=random,limit=1,type=area_effect_cloud] add rngSelected
execute as @e[tag=rngSelected,tag=rngHur,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/lightning/givehur
execute as @e[tag=rngSelected,tag=rngThun,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/lightning/givethun