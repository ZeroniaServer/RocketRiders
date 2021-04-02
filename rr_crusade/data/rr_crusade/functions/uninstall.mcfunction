tag @e[tag=Selection,tag=crusadeEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_crusade:disable
execute if entity @e[tag=rr_crusade,limit=1,type=armor_stand] run kill @e[tag=rr_crusade,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_crusade,limit=1,type=armor_stand] run tellraw @s {"text":"Crusade Mode uninstalled.","color":"red","bold":"true"}
execute unless entity @e[tag=rr_crusade,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the Crusade Mode datapack (recommended).","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_crusade\""}}
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1