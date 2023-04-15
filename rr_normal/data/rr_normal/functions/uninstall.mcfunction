execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function rr_normal:disable
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=normalLast,limit=1] add needsForceClear
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=normalLast,limit=1] run function rr_normal:arenaclear/areaclear
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=normalLast,limit=1] remove normalLast
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,limit=1] run kill @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function rr_normal:game/gameend
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,limit=1] run tellraw @s {"text":"Normal Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,limit=1] run tellraw @s {"text":"Click here to disable the Normal Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_normal\""}}
scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] refreshsigns 1