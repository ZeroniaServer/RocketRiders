execute as @e[type=armor_stand,tag=Selection] run function rr_crusade:disable
tag @e[type=armor_stand,tag=Selection,tag=crusadeLast,limit=1] add needsForceClear
execute as @e[type=armor_stand,tag=Selection,tag=crusadeLast,limit=1] run function rr_crusade:arenaclear/areaclear
tag @e[type=armor_stand,tag=Selection,tag=crusadeLast,limit=1] remove crusadeLast
execute if entity @e[type=armor_stand,tag=rr_crusade,limit=1] run kill @e[type=armor_stand,tag=rr_crusade,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[type=marker,tag=PlacerClear] run function rr_crusade:game/gameend
execute unless entity @e[type=armor_stand,tag=rr_crusade,limit=1] run tellraw @s {"text":"Crusade Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[type=armor_stand,tag=rr_crusade,limit=1] run tellraw @s {"text":"Click here to disable the Crusade Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_crusade\""}}
scoreboard players add @e[type=armor_stand,tag=Selection,limit=1] refreshsigns 1

kill @e[type=#custom:crystal,tag=CrusadeEntity]
scoreboard objectives remove crusadehp
bossbar remove rr_crusade:yellow
bossbar remove rr_crusade:blue