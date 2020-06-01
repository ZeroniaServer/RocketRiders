execute if entity @e[tag=Selection,tag=rngMissile] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @e[tag=Selection,tag=rngMissile] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @e[tag=Selection,tag=rngUtil] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem,tag=rngMissile] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","rng1"]}
tag @e[tag=rng1,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngMissile] run function items:missile/rng
execute as @e[tag=rngSelected,tag=rngUtil] run function items:util/rng