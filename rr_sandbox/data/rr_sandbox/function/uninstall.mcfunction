execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_sandbox:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=sandboxLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=sandboxLast] run function rr_sandbox:arenaclear/areaclear
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=sandboxLast] remove sandboxLast
execute if entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1]
scoreboard objectives remove nomicon
scoreboard players reset * gamemodeID
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_sandbox:game/gameend
execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run tellraw @s {"text":"Sandbox Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run tellraw @s {"text":"Click here to disable the Sandbox Mode datapack (recommended).","color":"red","underlined":true,"click_event":{"action":"run_command","command":"/datapack disable 'file/rr_sandbox'"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to disable the Sandbox Mode datapack"}}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1