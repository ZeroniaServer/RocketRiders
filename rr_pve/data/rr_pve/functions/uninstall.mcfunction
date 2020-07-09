function rr_pve:disable
execute if entity @e[tag=rr_pve,limit=1,type=armor_stand] run kill @e[tag=rr_pve,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_pve,limit=1,type=armor_stand] run tellraw @s {"text":"PVE Mode uninstalled.","color":"red","bold":"true"}