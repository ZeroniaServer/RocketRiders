tag @e[tag=Selection,tag=swapEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_swap:disable
execute if entity @e[tag=rr_swap,limit=1,type=armor_stand] run kill @e[tag=rr_swap,limit=1,type=armor_stand]
bossbar remove rr_swap:swap_progress
scoreboard objectives remove swapside
scoreboard objectives remove Clustertime
scoreboard objectives remove ICBMID
scoreboard objectives remove ICBMtime
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_swap,limit=1,type=armor_stand] run tellraw @s {"text":"Swap Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[tag=rr_swap,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the Swap Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_swap\""}}
execute unless entity @e[tag=PlacerClear,type=marker] run function game:forcestop
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1