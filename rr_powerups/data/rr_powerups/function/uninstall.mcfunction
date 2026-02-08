execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_powerups:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsLast] run function rr_powerups:arenaclear/areaclear
execute if entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_powerups,limit=1]
scoreboard players reset * gamemodeID
bossbar remove rr_powerups:capture_progress
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsLast] unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_powerups:game/while_phase/match/over
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsLast] remove powerupsLast
execute unless entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Powerups Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Click here to disable the Powerups Mode datapack (recommended).","color":"red","underlined":true,"click_event":{"action":"run_command","command":"/datapack disable 'file/rr_powerups'"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to disable the Powerups Mode datapack"}}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1