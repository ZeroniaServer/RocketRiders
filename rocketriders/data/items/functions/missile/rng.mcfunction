##Sub-RNG for Missiles
#Choose between each category
execute if entity @e[tag=Selection,tag=rngHeavy,tag=!givenAllHeavy,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHeavy","rng2"]}
execute if entity @e[tag=Selection,tag=rngNormal,tag=!givenAllNormal,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNormal","rng2"]}
execute if entity @e[tag=Selection,tag=rngLightning,tag=!givenAllLightning,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngLightning","rng2"]}

#Select category and run appropriate sub-sub-RNG function
tag @e[tag=rng2,sort=random,limit=1,type=area_effect_cloud] add rngSelected
execute as @e[tag=rngSelected,tag=rngHeavy,type=area_effect_cloud] run function items:missile/heavy/rng
execute as @e[tag=rngSelected,tag=rngNormal,type=area_effect_cloud] run function items:missile/normal/rng
execute as @e[tag=rngSelected,tag=rngLightning,type=area_effect_cloud] run function items:missile/lightning/rng