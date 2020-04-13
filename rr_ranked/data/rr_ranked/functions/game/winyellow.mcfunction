#Yellow team round wins

kill @e[type=tnt]

execute unless entity @a[team=Yellow,scores={RoundsWon=1..}] run scoreboard players set @a[team=Yellow] RoundsWon 1
execute if entity @a[team=Yellow,tag=WonARound,scores={RoundsWon=1..}] run scoreboard players set @a[team=Yellow] RoundsWon 2
tag @a[team=Yellow,scores={RoundsWon=1..}] add WonARound

title @a title ["",{"text":"Team Yellow","bold":true,"color":"gold"}]
title @a subtitle ["",{"text":"Won this round!","bold":true,"color":"green"}]

function arenaclear:areaclear
execute if entity @a[team=Yellow,scores={RoundsWon=..1}] run function rr_ranked:arenaclear/areaclear


execute as @a[team=Yellow,scores={RoundsWon=2..}] run function game:winyellow
execute as @a[team=Yellow,scores={RoundsWon=2..}] run function rr_ranked:rankcalc/calcyellow
execute as @a[team=Yellow,scores={RoundsWon=2..}] run scoreboard players reset @a RoundsWon