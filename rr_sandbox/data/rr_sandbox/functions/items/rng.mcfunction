summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSlime","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngRS","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngPiston","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSPiston","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngObsi","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngObser","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngTNT","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngGlass","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngGlaze","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngCon","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngFirework","rng1"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngScaf","rng1"]}
tag @e[tag=rng1,sort=random,limit=1,type=area_effect_cloud] add rngSelected
execute as @e[tag=rngSelected,tag=rngSlime,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveslime
execute as @e[tag=rngSelected,tag=rngRS,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givers
execute as @e[tag=rngSelected,tag=rngPiston,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givepiston
execute as @e[tag=rngSelected,tag=rngSpiston,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givespiston
execute as @e[tag=rngSelected,tag=rngObsi,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveobsi
execute as @e[tag=rngSelected,tag=rngObser,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveobser
execute as @e[tag=rngSelected,tag=rngTNT,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givetnt
execute as @e[tag=rngSelected,tag=rngGlass,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveglass
execute as @e[tag=rngSelected,tag=rngGlaze,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/giveglaze
execute as @e[tag=rngSelected,tag=rngCon,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givecon
execute as @e[tag=rngSelected,tag=rngFirework,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givefirework
execute as @e[tag=rngSelected,tag=rngScaf,type=area_effect_cloud] as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_sandbox:items/givescaf