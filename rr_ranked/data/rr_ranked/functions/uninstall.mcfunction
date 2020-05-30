function rr_ranked:disable
execute if entity @e[tag=rr_ranked,limit=1] run kill @e[tag=rr_ranked,limit=1]
scoreboard objectives remove RoundsWon
scoreboard players reset * gamemodeID
scoreboard objectives remove Forfeit
scoreboard objectives remove ForfeitWin
scoreboard objectives remove ForfeitLoss
scoreboard objectives remove ForfeitTimeout
scoreboard objectives remove fakeendtimer
execute unless entity @e[tag=ranked,limit=1] run tellraw @s {"text":"Ranked 1v1 Mode uninstalled.","color":"red","bold":"true"}