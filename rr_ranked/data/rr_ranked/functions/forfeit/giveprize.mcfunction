tag @s remove InRanked
scoreboard players add @s[scores={ForfeitWin=1..}] XP 1
scoreboard players remove @s[scores={ForfeitWin=1..}] XP 1
scoreboard players reset @s ForfeitLoss
execute if entity @s[scores={ForfeitWin=..0}] run tag @s remove ForfeitWon
execute if entity @s[scores={ForfeitWin=..0}] run scoreboard players reset @s ForfeitWin
execute if entity @s[tag=ForfeitWon,scores={ForfeitWin=1..}] run function rr_ranked:forfeit/giveprize