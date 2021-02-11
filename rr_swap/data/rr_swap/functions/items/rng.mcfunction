execute as @s[tag=!givenAllHeavy,tag=!givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","swapRNG1"]}
execute as @s[tag=rngUtil,tag=!utilOff,tag=!givenAllDUtil,tag=!givenAllLUtil,tag=gaveFirstItem] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","swapRNG1"]}
tag @e[tag=swapRNG1,sort=random,limit=1,type=area_effect_cloud] add SelectedSwapRNG
execute as @e[tag=SelectedSwapRNG,tag=rngMissile,type=area_effect_cloud] run function rr_swap:items/missile/rng
execute as @e[tag=SelectedSwapRNG,tag=rngUtil,type=area_effect_cloud] run function rr_swap:items/util/rng