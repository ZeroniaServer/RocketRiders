tag @e[type=armor_stand,tag=Selection,tag=ctfLast,limit=1] add needsForceClear
function rr_ctf:disable
execute if entity @e[type=armor_stand,tag=rr_ctf,limit=1] run kill @e[type=armor_stand,tag=rr_ctf,limit=1]
execute unless entity @e[type=armor_stand,tag=rr_sandbox,limit=1] run scoreboard objectives remove HasPickaxe
execute unless entity @e[type=armor_stand,tag=rr_sandbox,limit=1] run scoreboard objectives remove dropPickaxe
scoreboard objectives remove FlagScore
scoreboard objectives remove FlagDeliver
scoreboard objectives remove FlagDisp
scoreboard objectives remove MineWhiteGlass
scoreboard objectives remove MinePurpleGlass
scoreboard objectives remove canopyStreak
scoreboard players reset * gamemodeID
execute unless entity @e[type=armor_stand,tag=rr_ctf,limit=1] run tellraw @s {"text":"Capture the Flag Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[type=armor_stand,tag=rr_ctf,limit=1] run tellraw @s {"text":"Click here to disable the Capture the Flag Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_ctf\""}}
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
scoreboard players add @e[type=armor_stand,tag=Selection,limit=1] refreshsigns 1