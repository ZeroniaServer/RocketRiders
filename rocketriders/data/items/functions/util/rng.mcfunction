execute if entity @e[tag=Selection,tag=rngArrows] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngArrows","rng2"]}
execute if entity @e[tag=Selection,tag=rngFireball] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngFireball","rng2"]}
execute if entity @e[tag=Selection,tag=rngObshield] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngObshield","rng2"]}
execute if entity @e[tag=Selection,tag=rngCanopy] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngCanopy","rng2"]}
execute if entity @e[tag=Selection,tag=rngShield] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngShield","rng2"]}
execute if entity @e[tag=Selection,tag=rngSplash] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSplash","rng2"]}
execute if entity @e[tag=Selection,tag=rngVortex] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngVortex","rng2"]}
execute if entity @e[tag=Selection,tag=rngNova] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNova","rng2"]}
tag @e[tag=rng2,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngArrows] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givearrows
execute as @e[tag=rngSelected,tag=rngFireball] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givefireball
execute as @e[tag=rngSelected,tag=rngObshield] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveobshield
execute as @e[tag=rngSelected,tag=rngCanopy] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @e[tag=rngSelected,tag=rngShield] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/giveshield
execute as @e[tag=rngSelected,tag=rngSplash] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givesplash
execute as @e[tag=rngSelected,tag=rngVortex] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givevortex
execute as @e[tag=rngSelected,tag=rngNova] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givenova