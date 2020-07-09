function rr_swap:disable
execute if entity @e[tag=rr_swap,limit=1,type=armor_stand] run kill @e[tag=rr_swap,limit=1,type=armor_stand]
bossbar remove rr_swap:swap_progress
scoreboard objectives remove swapside
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_swap,limit=1,type=armor_stand] run tellraw @s {"text":"Swap Mode uninstalled.","color":"red","bold":"true"}