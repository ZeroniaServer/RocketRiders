execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_classic:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=classicLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=classicLast] run function rr_classic:arenaclear/areaclear
execute if entity @e[x=0,type=armor_stand,tag=rr_classic,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_classic,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=classicLast] unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_classic:game/while_phase/match/closing
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=classicLast] remove classicLast
execute unless entity @e[x=0,type=armor_stand,tag=rr_classic,limit=1] run tellraw @s {"text":"Classic Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_classic,limit=1] run tellraw @s {"text":"Click here to disable the Classic Mode datapack (recommended).","color":"red","underlined":true,"click_event":{"action":"run_command","command":"/datapack disable 'file/rr_classic'"},"hover_event":{"action":"show_text","value":{"color":"red","text":"Click to disable the Classic Mode datapack"}}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1