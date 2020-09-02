function rr_chase:disable
execute if entity @e[tag=rr_chase,limit=1,type=armor_stand] run kill @e[tag=rr_chase,limit=1]
bossbar remove rr_chase:lead
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_chase,limit=1,type=armor_stand] run tellraw @s {"text":"Chase Mode uninstalled.","color":"red","bold":"true"}