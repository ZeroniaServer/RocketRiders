execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_swap:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapLast] run function rr_swap:arenaclear/areaclear
execute if entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_swap,limit=1]
bossbar remove rr_swap:swap_progress
scoreboard objectives remove swapside
scoreboard players reset * gamemodeID
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapLast] unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_swap:game/while_phase/match/over
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapLast] remove swapLast
execute unless entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run tellraw @s {"text":"Swap Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run tellraw @s {"text":"Click here to disable the Swap Mode datapack (recommended).","color":"red","underlined":true,"click_event":{"action":"run_command","command":"/datapack disable 'file/rr_swap'"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to disable the Swap Mode datapack"}}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1