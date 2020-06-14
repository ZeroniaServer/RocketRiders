execute unless entity @s[tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","swapRNG1"]}
execute if entity @s[tag=rngUtil] unless entity @s[tag=givenAllDUtil,tag=givenAllLUtil] unless entity @s[tag=!gaveFirstItem] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","swapRNG1"]}
tag @e[tag=swapRNG1,sort=random,limit=1] add SelectedSwapRNG
execute as @e[tag=SelectedSwapRNG,tag=rngMissile] run function rr_swap:items/missile/rng
execute as @e[tag=SelectedSwapRNG,tag=rngUtil] run function rr_swap:items/util/rng