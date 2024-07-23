execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_powerups:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsLast] run function rr_powerups:arenaclear/areaclear
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsLast] remove powerupsLast
execute if entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_powerups,limit=1]
scoreboard players reset * gamemodeID
scoreboard objectives remove beeShieldCount
bossbar remove rr_powerups:capture_progress
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_powerups:game/gameend
execute unless entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Powerups Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Click here to disable the Powerups Mode datapack (recommended).","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/datapack disable 'file/rr_powerups'"}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1