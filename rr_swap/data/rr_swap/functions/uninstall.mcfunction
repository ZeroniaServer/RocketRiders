tag @e[type=armor_stand,tag=Selection,tag=swapLast,limit=1] add needsForceClear
execute as @e[type=armor_stand,tag=Selection,tag=swapLast,limit=1] run function rr_swap:arenaclear/areaclear
tag @e[type=armor_stand,tag=Selection,tag=swapLast,limit=1] remove swapLast
execute if entity @e[type=armor_stand,tag=rr_swap,limit=1] run kill @e[type=armor_stand,tag=rr_swap,limit=1]
bossbar remove rr_swap:swap_progress
scoreboard objectives remove swapside
scoreboard objectives remove Clustertime
scoreboard objectives remove ICBMID
scoreboard objectives remove ICBMtime
scoreboard players reset * gamemodeID
execute unless entity @e[type=armor_stand,tag=rr_swap,limit=1] run tellraw @s {"text":"Swap Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[type=armor_stand,tag=rr_swap,limit=1] run tellraw @s {"text":"Click here to disable the Swap Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_swap\""}}
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
schedule function rr_swap:disable 1t append
scoreboard players add @e[type=armor_stand,tag=Selection,limit=1] refreshsigns 1