summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBlindArrow","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngLeviArrow","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngWitherArrow","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSlowArrow","rng2"]}
tag @e[tag=rng2,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngBlindArrow] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[tag=rngSelected,tag=rngBlindArrow] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[tag=rngSelected,tag=rngLeviArrow] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[tag=rngSelected,tag=rngLeviArrow] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[tag=rngSelected,tag=rngWitherArrow] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[tag=rngSelected,tag=rngWitherArrow] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[tag=rngSelected,tag=rngSlowArrow] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/giveslowarrow
execute as @e[tag=rngSelected,tag=rngSlowArrow] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/giveslowarrow