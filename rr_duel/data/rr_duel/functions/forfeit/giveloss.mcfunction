execute as @s[tag=!losschange] run function rr_duel:forfeit/losschange1
scoreboard players remove @s[scores={ForfeitLoss=1..}] XP 1
scoreboard players remove @s[scores={ForfeitLoss=1..}] ForfeitLoss 1
tag @s[scores={ForfeitLoss=..0}] remove ForfeitLoss
tag @s[scores={ForfeitLoss=..0}] remove InRanked
tellraw @s[scores={ForfeitLoss=..0}] ["",{"text":"[FORFEIT PENALTY]","bold":true,"color":"dark_red"},{"text":" You left a 1v1 Duel match and didn't return in time, so you lost some XP to compensate for this.","color":"red"}]
execute as @s[scores={ForfeitLoss=..0}] run function rr_duel:forfeit/losschange2
scoreboard players reset @s[scores={ForfeitLoss=..0}] ForfeitWin
scoreboard players reset @s[scores={ForfeitLoss=..0}] ForfeitLoss
execute if entity @s[tag=InRanked,scores={ForfeitLoss=1..}] run function rr_duel:forfeit/giveloss