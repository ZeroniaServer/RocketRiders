execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_normal:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalLast] run function rr_normal:arenaclear/areaclear
execute if entity @e[x=0,type=armor_stand,tag=rr_normal,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_normal,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalLast] unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_normal:game/while_phase/match/over
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalLast] remove normalLast
execute unless entity @e[x=0,type=armor_stand,tag=rr_normal,limit=1] run tellraw @s {"text":"Normal Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_normal,limit=1] run tellraw @s {"text":"Click here to disable the Normal Mode datapack (recommended).","color":"red","underlined":true,"click_event":{"action":"run_command","command":"/datapack disable 'file/rr_normal'"},"hover_event":{"action":"show_text","value":{"color":"red","text":"Click to disable the Normal Mode datapack"}}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1