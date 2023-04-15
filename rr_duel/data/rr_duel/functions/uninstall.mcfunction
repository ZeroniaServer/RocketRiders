execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function rr_duel:disable
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=duelLast,limit=1] add needsForceClear
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=duelLast,limit=1] remove duelLast
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel,limit=1] run kill @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel,limit=1]
scoreboard objectives remove RoundsWon
scoreboard players reset * gamemodeID
scoreboard objectives remove Forfeit
scoreboard objectives remove ForfeitWin
scoreboard objectives remove ForfeitLoss
scoreboard objectives remove ForfeitTimeout
scoreboard objectives remove fakeendtimer
scoreboard objectives remove Rounds
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function rr_duel:game/gameend
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel,limit=1] run tellraw @s {"text":"1v1 Duel Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel,limit=1] run tellraw @s {"text":"Click here to disable the 1v1 Duel Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_duel\""}}
scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] refreshsigns 1