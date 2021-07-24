function rr_powerups:disable
tag @e[type=armor_stand,tag=Selection,tag=powerupsLast,limit=1] add needsForceClear
execute as @e[type=armor_stand,tag=Selection,tag=powerupsLast,limit=1] run function rr_powerups:arenaclear/areaclear
tag @e[type=armor_stand,tag=Selection,tag=powerupsLast,limit=1] remove powerupsLast
execute if entity @e[type=armor_stand,tag=rr_powerups,limit=1] run kill @e[type=armor_stand,tag=rr_powerups,limit=1]
scoreboard players reset * gamemodeID
scoreboard objectives remove beeShieldCount
bossbar remove rr_powerups:capture_progress
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[type=marker,tag=PlacerClear] run function rr_powerups:game/gameend
execute unless entity @e[type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Powerups Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Click here to disable the Powerups Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_powerups\""}}
scoreboard players add @e[type=armor_stand,tag=Selection,limit=1] refreshsigns 1