tag @e[tag=Selection,tag=normalEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_normal:disable
execute if entity @e[tag=rr_normal,limit=1,type=armor_stand] run kill @e[tag=rr_normal,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_normal,limit=1,type=armor_stand] run tellraw @s {"text":"Normal Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[tag=rr_normal,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the Normal Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_normal\""}}
execute unless entity @e[tag=PlacerClear,type=marker] run function game:forcestop
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1