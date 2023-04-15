execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function rr_ctf:disable
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ctfLast,limit=1] add needsForceClear
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ctfLast,limit=1] run function rr_ctf:arenaclear/areaclear
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ctfLast,limit=1] remove ctfLast
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_ctf,limit=1] run kill @e[predicate=custom:indimension,type=armor_stand,tag=rr_ctf,limit=1]
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_sandbox,limit=1] run scoreboard objectives remove dropPickaxe
scoreboard objectives remove FlagScore
scoreboard objectives remove FlagDeliver
scoreboard objectives remove FlagDisp
scoreboard objectives remove MineWhiteGlass
scoreboard objectives remove MinePurpleGlass
scoreboard objectives remove canopyStreak
scoreboard players reset * gamemodeID
bossbar remove rr_ctf:fy1
bossbar remove rr_ctf:fy2
bossbar remove rr_ctf:fb1
bossbar remove rr_ctf:fb2
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function rr_ctf:game/gameend
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_ctf,limit=1] run tellraw @s {"text":"Capture the Flag Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_ctf,limit=1] run tellraw @s {"text":"Click here to disable the Capture the Flag Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_ctf\""}}
scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] refreshsigns 1