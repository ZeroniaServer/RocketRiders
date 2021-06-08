tag @e[tag=Selection,tag=chaseEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_chase:disable
execute if entity @e[tag=rr_chase,limit=1,type=armor_stand] run kill @e[tag=rr_chase,limit=1]
bossbar remove rr_chase:lead
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_chase,limit=1,type=armor_stand] run tellraw @s {"text":"Chase Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[tag=rr_chase,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the Chase Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_chase\""}}
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1