scoreboard players add @s[scores={ForfeitWin=1..}] XP 1
scoreboard players remove @s[scores={ForfeitWin=1..}] ForfeitWin 1
tag @s[scores={ForfeitWin=..0}] remove ForfeitWon
tag @s[scores={ForfeitWin=..0}] remove InRanked
tellraw @s[scores={ForfeitWin=..0}] ["",{"text":"[FORFEIT PRIZE]","bold":true,"color":"dark_green"},{"text":" Your opponent forfeited in a 1v1 Duel match, so you gained some XP to compensate for this.","color":"green"}]
scoreboard players reset @s[scores={ForfeitWin=..0}] ForfeitWin
scoreboard players reset @s[scores={ForfeitWin=..0}] ForfeitLoss
execute if entity @s[tag=ForfeitWon,scores={ForfeitWin=1..}] run function rr_duel:forfeit/giveprize