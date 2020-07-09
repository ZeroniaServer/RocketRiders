function rr_powerups:disable
execute if entity @e[tag=rr_powerups,limit=1,type=armor_stand] run kill @e[tag=rr_powerups,limit=1,type=armor_stand]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_powerups,limit=1,type=armor_stand] run tellraw @s {"text":"Powerups Mode uninstalled.","color":"red","bold":"true"}