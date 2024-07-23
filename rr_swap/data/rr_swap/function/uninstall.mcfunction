execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_swap:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapLast] run function rr_swap:arenaclear/areaclear
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapLast] remove swapLast
execute if entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_swap,limit=1]
bossbar remove rr_swap:swap_progress
scoreboard objectives remove swapside
scoreboard objectives remove Clustertime
scoreboard objectives remove ICBMID
scoreboard objectives remove ICBMtime
scoreboard players reset * gamemodeID
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_swap:game/gameend
execute unless entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run tellraw @s {"text":"Swap Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run tellraw @s {"text":"Click here to disable the Swap Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_swap\""}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1