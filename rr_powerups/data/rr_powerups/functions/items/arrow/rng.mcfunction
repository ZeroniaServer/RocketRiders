summon marker 0 0 0 {Tags:["rngBlindArrow","rng2"]}
summon marker 0 0 0 {Tags:["rngLeviArrow","rng2"]}
summon marker 0 0 0 {Tags:["rngWitherArrow","rng2"]}
summon marker 0 0 0 {Tags:["rngSlowArrow","rng2"]}
tag @e[type=marker,tag=rng2,sort=random,limit=1] add rngSelected

#> Prevent arrow duplication glitches
execute unless entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @e[type=item] if data entity @s {Item:{id:"minecraft:tipped_arrow"}} run function rr_powerups:items/deduct

function items:full_hotbar

execute as @e[type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/arrow/giveslowarrow
execute as @e[type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/arrow/giveslowarrow

#item announcements
execute as @e[type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]

kill @e[type=marker,tag=rng2]

execute unless entity @e[tag=PUCrystalPerma] run scoreboard players add @e[tag=captureMiddle,tag=!BrokenPlatform] CmdData 2
execute unless entity @e[tag=PUCrystalPerma] as @e[tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:entity.turtle.egg_crack master @a ~ ~ ~ 0.4 2
execute unless entity @e[tag=PUCrystalPerma] as @e[tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 1 1.4