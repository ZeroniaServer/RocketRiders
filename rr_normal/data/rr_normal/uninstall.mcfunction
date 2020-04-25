function rr_normal:disable
execute if entity @e[tag=rr_normal,limit=1] run kill @e[tag=rr_normal,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_normal,limit=1] run tellraw @s {"text":"Normal mode uninstalled.","color":"red","bold":"true"}