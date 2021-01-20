tag @e[tag=Selection,tag=duelEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_duel:disable
execute if entity @e[tag=rr_duel,limit=1,type=armor_stand] run kill @e[tag=rr_duel,limit=1,type=armor_stand]
scoreboard objectives remove RoundsWon
scoreboard players reset * gamemodeID
scoreboard objectives remove Forfeit
scoreboard objectives remove ForfeitWin
scoreboard objectives remove ForfeitLoss
scoreboard objectives remove ForfeitTimeout
scoreboard objectives remove fakeendtimer
scoreboard objectives remove Rounds
execute unless entity @e[tag=rr_duel,limit=1,type=armor_stand] run tellraw @s {"text":"1v1 Duel Mode uninstalled.","color":"red","bold":"true"}
execute unless entity @e[tag=rr_duel,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the 1v1 Duel Mode datapack (recommended).","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_duel\""}}
execute unless entity @e[tag=PlacerClear,type=area_effect_cloud] run function game:forcestop
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1