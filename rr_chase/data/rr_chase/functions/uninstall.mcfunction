execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function rr_chase:disable
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=chaseLast,limit=1] add needsForceClear
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=chaseLast,limit=1] run function rr_chase:arenaclear/areaclear
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=chaseLast,limit=1] remove chaseLast
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_chase,limit=1] run kill @e[predicate=custom:indimension,type=armor_stand,tag=rr_chase,limit=1]
bossbar remove rr_chase:lead
scoreboard players reset * gamemodeID
scoreboard objectives remove BreakCBRed
scoreboard objectives remove BreakCBCyan
scoreboard objectives remove BreakCBPurple
scoreboard objectives remove BreakCBTint
scoreboard objectives remove ChaseAlarm
scoreboard objectives remove ArmorColor
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function rr_chase:game/gameend
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_chase,limit=1] run tellraw @s {"text":"Chase Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_chase,limit=1] run tellraw @s {"text":"Click here to disable the Chase Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_chase\""}}
scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] refreshsigns 1