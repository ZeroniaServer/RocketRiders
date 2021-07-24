tag @e[type=armor_stand,tag=Selection,tag=crusadeLast,limit=1] add needsForceClear
function rr_crusade:disable
execute if entity @e[type=armor_stand,tag=rr_crusade,limit=1] run kill @e[type=armor_stand,tag=rr_crusade,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[type=armor_stand,tag=rr_crusade,limit=1] run tellraw @s {"text":"Crusade Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[type=armor_stand,tag=rr_crusade,limit=1] run tellraw @s {"text":"Click here to disable the Crusade Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_crusade\""}}
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
scoreboard players add @e[type=armor_stand,tag=Selection,limit=1] refreshsigns 1