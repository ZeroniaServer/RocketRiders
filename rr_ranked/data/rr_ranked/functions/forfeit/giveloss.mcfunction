scoreboard players remove @s[scores={ForfeitLoss=1..}] XP 1
scoreboard players remove @s[scores={ForfeitLoss=1..}] ForfeitLoss 1
tag @s[scores={ForfeitLoss=..0}] remove ForfeitLoss
tag @s[scores={ForfeitLoss=..0}] remove InRanked
scoreboard players reset @s[scores={ForfeitLoss=..0}] ForfeitWin
tellraw @s[scores={ForfeitLoss=..0}] [{"text":"[FORFEIT PENALTY]","bold":true,"color":"dark_red"},{"text":" You left a ranked match and didn't return in time. You have now lost some XP to compensate for this.","color":"red"}]
scoreboard players reset @s[scores={ForfeitLoss=..0}] ForfeitLoss
execute if entity @s[tag=InRanked,scores={ForfeitLoss=1..}] run function rr_ranked:forfeit/giveloss