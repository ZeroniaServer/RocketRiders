function rr_normal:disable
execute if entity @e[tag=rr_normal,limit=1,type=armor_stand] run kill @e[tag=rr_normal,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_normal,limit=1,type=armor_stand] run tellraw @s {"text":"Normal Mode uninstalled.","color":"red","bold":"true"}