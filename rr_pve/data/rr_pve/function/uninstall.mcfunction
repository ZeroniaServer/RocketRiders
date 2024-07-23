execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_pve:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=pveLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=pveLast] run function rr_pve:arenaclear/areaclear
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=pveLast] remove pveLast
execute if entity @e[x=0,type=armor_stand,tag=rr_pve,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_pve,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_pve:game/gameend
execute unless entity @e[x=0,type=armor_stand,tag=rr_pve,limit=1] run tellraw @s {"text":"PVE Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_pve,limit=1] run tellraw @s {"text":"Click here to disable the PVE Mode datapack (recommended).","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/datapack disable 'file/rr_pve'"}}
execute unless entity @e[x=0,type=armor_stand,tag=rr_pve,limit=1] run tellraw @s {"text":"Click here to disable the Bots datapack (recommended).","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/datapack disable 'file/rr_bots'"}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1