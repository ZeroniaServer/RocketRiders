execute if entity @e[tag=Selection,tag=rngMissile] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @e[tag=Selection,tag=rngMissile] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @e[tag=Selection,tag=rngUtil] unless entity @s[tag=givenAllUtil] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","rng1"]}
tag @e[tag=rng1,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngMissile] run function items:missile/rng
execute as @e[tag=rngSelected,tag=rngUtil] run function items:util/rng


execute if entity @e[tag=Selection,tag=rngMissile] if entity @s[tag=doSurprise] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSurprise","rngSU"]}
execute if entity @e[tag=Selection,tag=rngMissile] if entity @s[tag=doSurprise] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNoSurprise","rngSU"]}
execute if entity @e[tag=Selection,tag=rngMissile] if entity @s[tag=doSurprise] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNoSurprise","rngSU"]}

tag @e[tag=rngSU,sort=random,limit=1] add rngSUSelected

execute as @e[tag=rngSUSelected,tag=rngSurprise] run execute as @a[team=Blue] run function items:surprise_blue/givesurpriseegg
execute as @e[tag=rngSUSelected,tag=rngSurprise] run execute as @a[team=Yellow] run function items:surprise_yellow/givesurpriseegg