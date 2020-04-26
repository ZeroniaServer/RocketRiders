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

#item announcements
execute as @e[tag=rngSelected,tag=rngBlindArrow] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Blindness Arrows","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngBlindArrow] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Blindness Arrows","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngLeviArrow] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Levitation Arrows","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngLeviArrow] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Levitation Arrows","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngWitherArrow] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Wither Arrows","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngWitherArrow] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Wither Arrows","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngSlowArrow] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Slowness Arrows","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngSlowArrow] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Slowness Arrows","color":"dark_purple","bold":"true","italic":"true"}]