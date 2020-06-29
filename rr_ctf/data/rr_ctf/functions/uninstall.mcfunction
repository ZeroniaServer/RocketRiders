function rr_ctf:disable
execute if entity @e[tag=rr_ctf,limit=1] run kill @e[tag=rr_ctf,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_ctf,limit=1] run tellraw @s {"text":"Capture the Flag Mode uninstalled.","color":"red","bold":"true"}