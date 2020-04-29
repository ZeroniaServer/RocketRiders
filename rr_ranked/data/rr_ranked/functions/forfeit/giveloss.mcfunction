scoreboard players remove @s[scores={ForfeitLoss=1..}] XP 1
scoreboard players remove @s[scores={ForfeitLoss=1..}] ForfeitLoss 1
execute if entity @s[scores={ForfeitLoss=..0}] run tag @s remove ForfeitLoss
execute if entity @s[scores={ForfeitLoss=..0}] run tag @s remove InRanked
execute if entity @s[scores={ForfeitLoss=..0}] run scoreboard players reset @s ForfeitWin
execute if entity @s[scores={ForfeitLoss=..0}] run tellraw @s ["",{"text":"[FORFEIT PENALTY]","bold":true,"color":"dark_red"},{"text":" You left a ranked match and didn't return in time. You have now lost some XP to compensate for this.","color":"red"}]
execute if entity @s[scores={ForfeitLoss=..0}] run scoreboard players reset @s ForfeitLoss
execute if entity @s[tag=InRanked,scores={ForfeitLoss=1..}] run function rr_ranked:forfeit/giveloss