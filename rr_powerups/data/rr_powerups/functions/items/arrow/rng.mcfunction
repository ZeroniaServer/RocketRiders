execute if entity @s[tag=!givenBlindArr] run summon marker 0 0 0 {Tags:["rngBlindArrow","rng2"]}
execute if entity @s[tag=!givenLeviArr] run summon marker 0 0 0 {Tags:["rngLeviArrow","rng2"]}
execute if entity @s[tag=!givenWitherArr] run summon marker 0 0 0 {Tags:["rngWitherArrow","rng2"]}
execute if entity @s[tag=!givenSlowArr] run summon marker 0 0 0 {Tags:["rngSlowArrow","rng2"]}
tag @e[tag=rng2,sort=random,limit=1,type=marker] add rngSelected
execute as @e[tag=rngSelected,tag=rngBlindArrow,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[tag=rngSelected,tag=rngBlindArrow,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[tag=rngSelected,tag=rngLeviArrow,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[tag=rngSelected,tag=rngLeviArrow,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[tag=rngSelected,tag=rngWitherArrow,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[tag=rngSelected,tag=rngWitherArrow,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[tag=rngSelected,tag=rngSlowArrow,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/arrow/giveslowarrow
execute as @e[tag=rngSelected,tag=rngSlowArrow,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/arrow/giveslowarrow

#item announcements
execute as @e[tag=rngSelected,tag=rngBlindArrow,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngBlindArrow,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngLeviArrow,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngLeviArrow,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngWitherArrow,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngWitherArrow,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngSlowArrow,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngSlowArrow,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]

kill @e[tag=rng2,type=marker]