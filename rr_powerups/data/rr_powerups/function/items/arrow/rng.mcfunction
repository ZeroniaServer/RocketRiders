summon marker 0 0 0 {Tags:["rngBlindArrow","rng2"]}
summon marker 0 0 0 {Tags:["rngLeviArrow","rng2"]}
summon marker 0 0 0 {Tags:["rngWitherArrow","rng2"]}
summon marker 0 0 0 {Tags:["rngSlowArrow","rng2"]}
tag @e[x=0,type=marker,tag=rng2,sort=random,limit=1] add rngSelected

#> Prevent arrow duplication glitches
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=item] if items entity @s contents tipped_arrow run function rr_powerups:items/deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/arrow/giveslowarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/arrow/giveslowarrow

#item announcements
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]

kill @e[x=0,type=marker,tag=rng2]

execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] run scoreboard players add @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] CmdData 2
execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:entity.turtle.egg_crack master @a[x=0] ~ ~ ~ 0.4 2
execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:block.amethyst_block.step master @a[x=0] ~ ~ ~ 1 1.4