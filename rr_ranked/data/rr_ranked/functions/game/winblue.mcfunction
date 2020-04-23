#Blue team round wins

kill @e[type=tnt]

execute unless entity @a[team=Blue,scores={RoundsWon=1..}] run scoreboard players set @a[team=Blue] RoundsWon 1
execute if entity @a[team=Blue,tag=WonARound,scores={RoundsWon=1..}] run scoreboard players set @a[team=Blue] RoundsWon 2
tag @a[team=Blue,scores={RoundsWon=1..}] add WonARound

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 100 0
title @a title ["",{"text":"Team Blue","bold":true,"color":"blue"},{"text":" scored!","bold":true,"color":"green"}]
execute if entity @a[team=Blue,scores={RoundsWon=1}] unless entity @a[team=Yellow,scores={RoundsWon=1..}] run title @a subtitle ["",{"text":"1","bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"text":"0","bold":true,"color":"gold"}]
execute if entity @a[team=Blue,scores={RoundsWon=1}] if entity @a[team=Yellow,scores={RoundsWon=1}] run title @a subtitle ["",{"text":"1","bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"text":"1","bold":true,"color":"gold"}]

function arenaclear:areaclear
execute if entity @a[team=Blue,scores={RoundsWon=1}] run function rr_ranked:arenaclear/areaclear


execute as @a[team=Blue,scores={RoundsWon=2..}] run function game:winblue
execute as @a[team=Blue,scores={RoundsWon=2..}] run function rr_ranked:rankcalc/calcblue
execute as @a[team=Blue,scores={RoundsWon=2..}] run scoreboard players reset @a RoundsWon