execute if entity @s[tag=!givenAllPowerup] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenAllPowerup] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngPowerup","rng1"]}
execute if entity @s[tag=!givenAllTipped] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngArrow","rng1"]}
tag @e[tag=rng1,sort=random,limit=1] add rngSelected
execute if entity @e[tag=rngSelected,tag=rngPowerup] run function rr_powerups:items/powerup/rng
execute if entity @e[tag=rngSelected,tag=rngArrow] run function rr_powerups:items/arrow/rng
function rr_powerups:items/tetris