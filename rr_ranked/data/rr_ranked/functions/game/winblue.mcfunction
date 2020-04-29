#Yellow team round wins
tag @e[tag=Selection] add CriteriaTrue


kill @e[type=tnt]

execute unless entity @a[team=Blue,scores={RoundsWon=1..}] run scoreboard players set @a[team=Blue] RoundsWon 1
execute if entity @a[team=Blue,tag=WonARound,scores={RoundsWon=1..}] run scoreboard players set @a[team=Blue] RoundsWon 2
tag @a[team=Blue,scores={RoundsWon=1..}] add WonARound

effect give @a[team=Blue] instant_health 1 100
effect give @a[team=Yellow] instant_health 1 100

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 100 0
title @a title ["",{"text":"Team Blue","bold":true,"color":"blue"},{"text":" scored!","bold":true,"color":"green"}]
execute if entity @a[team=Blue,scores={RoundsWon=1}] unless entity @a[team=Yellow,scores={RoundsWon=1..}] run title @a subtitle ["",{"text":"1","bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"text":"0","bold":true,"color":"gold"}]
execute if entity @a[team=Yellow,scores={RoundsWon=1}] if entity @a[team=Blue,scores={RoundsWon=1}] run title @a subtitle ["",{"text":"1","bold":true,"color":"blue"},{"text":" - ","bold":true,"color":"green"},{"text":"1","bold":true,"color":"gold"}]

function arenaclear:areaclear
function rr_ranked:arenaclear/areaclear

tag @e[tag=Selection] remove TimeOut
scoreboard players reset @e[tag=Selection] ForfeitTimeout

execute as @a[team=Blue,scores={RoundsWon=2..}] run say fuck this system dude
execute as @a[team=Blue,scores={RoundsWon=2..}] run tag @a[team=Blue] remove InRanked
execute as @a[team=Blue,scores={RoundsWon=2..}] run scoreboard players reset @a[team=Blue] ForfeitLoss
execute as @a[team=Blue,scores={RoundsWon=2..}] run function game:winblue
execute as @a[team=Blue,scores={RoundsWon=2..}] run function rr_ranked:rankcalc/calcblue
execute as @a[team=blue,scores={RoundsWon=2..}] run scoreboard players reset @a RoundsWon