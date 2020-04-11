function rr_powerups:disable
execute if entity @e[tag=rr_powerups,limit=1] run kill @e[tag=rr_powerups,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_powerups,limit=1] run tellraw @s {"text":"Powerups mode uninstalled.","color":"red","bold":"true"}