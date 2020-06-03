function rr_swap:disable
execute if entity @e[tag=rr_swap,limit=1] run kill @e[tag=rr_swap,limit=1]
bossbar remove rr_swap:swap_progress
scoreboard objectives remove swapside
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_swap,limit=1] run tellraw @s {"text":"Swap Mode uninstalled.","color":"red","bold":"true"}