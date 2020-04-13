#Blue team round wins

kill @e[type=tnt]

execute unless entity @a[team=Blue,scores={RoundsWon=1..}] run scoreboard players set @a[team=Blue] RoundsWon 1
execute if entity @a[team=Blue,tag=WonARound,scores={RoundsWon=1..}] run scoreboard players set @a[team=Blue] RoundsWon 2
tag @a[team=Blue,scores={RoundsWon=1..}] add WonARound

title @a title ["",{"text":"Team Blue","bold":true,"color":"blue"}]
title @a subtitle ["",{"text":"Won this round!","bold":true,"color":"green"}]

function arenaclear:areaclear
execute if entity @a[team=Blue,scores={RoundsWon=..1}] run function rr_ranked:arenaclear/areaclear


execute as @a[team=Blue,scores={RoundsWon=2..}] run function game:winblue
execute as @a[team=Blue,scores={RoundsWon=2..}] run function rr_ranked:rankcalc/calcblue
execute as @a[team=Blue,scores={RoundsWon=2..}] run scoreboard players reset @a RoundsWon