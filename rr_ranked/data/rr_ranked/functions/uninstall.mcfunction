function rr_crusade:disable
execute if entity @e[tag=rr_ranked,limit=1] run kill @e[tag=rr_ranked,limit=1]
scoreboard objectives remove RoundsWon
scoreboard players reset * gamemodeID
scoreboard objectives remove Forfeit
scoreboard objectives remove ForfeitWin
scoreboard objectives remove ForfeitLoss
scoreboard objectives remove ForfeitTimeout
execute unless entity @e[tag=ranked,limit=1] run tellraw @s {"text":"Ranked 1v1 mode uninstalled.","color":"red","bold":"true"}