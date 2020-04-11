execute if entity @e[tag=Selection,tag=rngHeavy] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHeavy","rng2"]}
execute if entity @e[tag=Selection,tag=rngNormal] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNormal","rng2"]}
execute if entity @e[tag=Selection,tag=rngLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngLightning","rng2"]}
tag @e[tag=rng2,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngHeavy] run function items:missile/heavy/rng
execute as @e[tag=rngSelected,tag=rngNormal] run function items:missile/normal/rng
execute as @e[tag=rngSelected,tag=rngLightning] run function items:missile/lightning/rng