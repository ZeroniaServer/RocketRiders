tag @s remove InRanked
scoreboard players add @s[scores={ForfeitWin=1..}] XP 1
scoreboard players remove @s[scores={ForfeitWin=1..}] XP 1
scoreboard players reset @s ForfeitLoss
tag @s[scores={ForfeitWin=..0}] remove ForfeitWon
scoreboard players reset @s[scores={ForfeitWin=..0}] ForfeitWin
execute if entity @s[tag=ForfeitWon,scores={ForfeitWin=1..}] run function rr_ranked:forfeit/giveprize