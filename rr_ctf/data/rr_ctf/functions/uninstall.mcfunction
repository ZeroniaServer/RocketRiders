tag @e[tag=Selection,tag=ctfEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_ctf:disable
execute if entity @e[tag=rr_ctf,limit=1,type=armor_stand] run kill @e[tag=rr_ctf,limit=1,type=armor_stand]
execute unless entity @e[tag=rr_sandbox,limit=1,type=armor_stand] run scoreboard objectives remove HasPickaxe
execute unless entity @e[tag=rr_sandbox,limit=1,type=armor_stand] run scoreboard objectives remove dropPickaxe
scoreboard objectives remove FlagScore
scoreboard objectives remove FlagDeliver
scoreboard objectives remove FlagDisp
scoreboard objectives remove MineWhiteGlass
scoreboard objectives remove MinePurpleGlass
scoreboard objectives remove canopyStreak
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run tellraw @s {"text":"Capture the Flag Mode uninstalled.","color":"red","bold":"true"}
execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the Capture the Flag Mode datapack (recommended).","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_ctf\""}}
execute unless entity @e[tag=PlacerClear,type=area_effect_cloud] run function game:forcestop
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1