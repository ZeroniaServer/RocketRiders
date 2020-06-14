execute unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","rng1"]}

#Surprise Egg chance - summons extra missile/util AECS to make surprise eggs rarer
execute if entity @s[tag=SurpriseEgg] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSurprise","rng1"]}
execute if entity @s[tag=SurpriseEgg] unless entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngMissile","rng1"]}
execute if entity @s[tag=rngUtil,tag=SurpriseEgg] unless entity @s[tag=givenAllUtil] unless entity @s[tag=!gaveFirstItem] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngUtil","rng1"]}

tag @e[tag=rng1,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngMissile] run function items:missile/rng
execute as @e[tag=rngSelected,tag=rngUtil] run function items:util/rng
execute as @e[tag=rngSelected,tag=rngSurprise] as @a[team=Blue,tag=!fullHotbar] run function items:surprise_blue/givesurpriseegg
execute as @e[tag=rngSelected,tag=rngSurprise] as @a[team=Yellow,tag=!fullHotbar] run function items:surprise_yellow/givesurpriseegg