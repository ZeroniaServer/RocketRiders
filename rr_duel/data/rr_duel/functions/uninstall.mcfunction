function rr_duel:disable
execute if entity @e[tag=rr_duel,limit=1,type=armor_stand] run kill @e[tag=rr_duel,limit=1,type=armor_stand]
scoreboard objectives remove RoundsWon
scoreboard players reset * gamemodeID
scoreboard objectives remove Forfeit
scoreboard objectives remove ForfeitWin
scoreboard objectives remove ForfeitLoss
scoreboard objectives remove ForfeitTimeout
scoreboard objectives remove fakeendtimer
execute unless entity @e[tag=rr_duel,limit=1,type=armor_stand] run tellraw @s {"text":"1v1 Duel Mode uninstalled.","color":"red","bold":"true"}