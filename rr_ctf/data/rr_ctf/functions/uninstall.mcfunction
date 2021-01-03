function rr_ctf:disable
execute if entity @e[tag=rr_ctf,limit=1,type=armor_stand] run kill @e[tag=rr_ctf,limit=1,type=armor_stand]
scoreboard objectives remove HasPickaxe
scoreboard objectives remove dropPickaxe
scoreboard objectives remove FlagScore
scoreboard objectives remove FlagDisp
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run tellraw @s {"text":"Capture the Flag Mode uninstalled.","color":"red","bold":"true"}