function rr_swap:disable
execute if entity @e[tag=rr_swap,limit=1] run kill @e[tag=rr_swap,limit=1]

scoreboard objectives remove swapside
kill @e[tag=RNGSwap]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_swap,limit=1] run tellraw @s {"text":"Swap mode uninstalled.","color":"red","bold":"true"}