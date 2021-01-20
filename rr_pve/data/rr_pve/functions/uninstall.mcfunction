tag @e[tag=Selection,tag=pveEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_pve:disable
execute if entity @e[tag=rr_pve,limit=1,type=armor_stand] run kill @e[tag=rr_pve,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_pve,limit=1,type=armor_stand] run tellraw @s {"text":"PVE Mode uninstalled.","color":"red","bold":"true"}
execute unless entity @e[tag=rr_pve,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the PVE Mode datapack (recommended).","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_pve\""}}
execute unless entity @e[tag=rr_pve,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the Bots datapack (recommended).","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_bots\""}}
execute unless entity @e[tag=PlacerClear,type=area_effect_cloud] run function game:forcestop
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1