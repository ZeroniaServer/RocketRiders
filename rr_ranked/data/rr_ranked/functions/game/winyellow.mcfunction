#Yellow team round wins

kill @e[type=tnt]

execute unless entity @a[team=Yellow,scores={RoundsWon=1..}] run scoreboard players set @a[team=Yellow] RoundsWon 1
execute if entity @a[team=Yellow,tag=WonARound,scores={RoundsWon=1..}] run scoreboard players set @a[team=Yellow] RoundsWon 2
tag @a[team=Yellow,scores={RoundsWon=1..}] add WonARound

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 100 0
title @a title ["",{"text":"Team Yellow","bold":true,"color":"gold"},{"text":" scored!","bold":true,"color":"green"}]
execute if entity @a[team=Yellow,scores={RoundsWon=1}] unless entity @a[team=Blue,scores={RoundsWon=1..}] run title @a subtitle ["",{"text":"0","bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"text":"1","bold":true,"color":"gold"}]
execute if entity @a[team=Blue,scores={RoundsWon=1}] if entity @a[team=Yellow,scores={RoundsWon=1}] run title @a subtitle ["",{"text":"1","bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"text":"1","bold":true,"color":"gold"}]

function arenaclear:areaclear
execute if entity @a[team=Yellow,scores={RoundsWon=1}] run function rr_ranked:arenaclear/areaclear


execute as @a[team=Yellow,scores={RoundsWon=2..}] run function game:winyellow
execute as @a[team=Yellow,scores={RoundsWon=2..}] run function rr_ranked:rankcalc/calcyellow
execute as @a[team=Yellow,scores={RoundsWon=2..}] run scoreboard players reset @a RoundsWon