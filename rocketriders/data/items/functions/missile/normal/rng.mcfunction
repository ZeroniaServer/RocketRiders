execute if entity @e[tag=Selection,tag=rngAnt] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngAnt","rng3"]}
execute if entity @e[tag=Selection,tag=rngBlade] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBlade","rng3"]}
execute if entity @e[tag=Selection,tag=rngCata] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngCata","rng3"]}
execute if entity @e[tag=Selection,tag=rngEguard] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngEguard","rng3"]}
execute if entity @e[tag=Selection,tag=rngNull] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNull","rng3"]}
# execute if entity @e[tag=Selection,tag=rngRift] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngRift","rng3"]}
execute if entity @e[tag=Selection,tag=rngSlash] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSlash","rng3"]}
execute if entity @e[tag=Selection,tag=rngToma] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngToma","rng3"]}
execute if entity @e[tag=Selection,tag=rngCitadel] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngCitadel","rng3"]}
execute if entity @e[tag=Selection,tag=rngGemi] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngGemi","rng3"]}
tag @e[tag=rng3,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngAnt] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveant
execute as @e[tag=rngSelected,tag=rngBlade] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveblade
execute as @e[tag=rngSelected,tag=rngCata] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecata
execute as @e[tag=rngSelected,tag=rngEguard] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveeguard
execute as @e[tag=rngSelected,tag=rngNull] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givenull
# execute as @e[tag=rngSelected,tag=rngRift] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giverift
execute as @e[tag=rngSelected,tag=rngSlash] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveslash
execute as @e[tag=rngSelected,tag=rngToma] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givetoma
execute as @e[tag=rngSelected,tag=rngCitadel] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecitadel
execute as @e[tag=rngSelected,tag=rngGemi] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givegemi