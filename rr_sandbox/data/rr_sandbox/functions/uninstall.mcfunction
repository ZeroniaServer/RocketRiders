execute as @e[type=armor_stand,tag=Selection] run function rr_sandbox:disable
tag @e[type=armor_stand,tag=Selection,tag=sandboxLast,limit=1] add needsForceClear
execute as @e[type=armor_stand,tag=Selection,tag=sandboxLast,limit=1] run function rr_sandbox:arenaclear/areaclear
tag @e[type=armor_stand,tag=Selection,tag=sandboxLast,limit=1] remove sandboxLast
execute if entity @e[type=armor_stand,tag=rr_sandbox,limit=1] run kill @e[type=armor_stand,tag=rr_sandbox,limit=1]
scoreboard objectives remove sandboxRandom
scoreboard objectives remove SBplaceSlime
scoreboard objectives remove SBplaceRS
scoreboard objectives remove SBplacePiston
scoreboard objectives remove SBplaceSPiston
scoreboard objectives remove SBplaceObsi
scoreboard objectives remove SBplaceTNT
scoreboard objectives remove SBplaceBGlass
scoreboard objectives remove SBplaceYGlass
scoreboard objectives remove SBplaceBGlaze
scoreboard objectives remove SBplaceYGlaze
scoreboard objectives remove SBplaceBCon
scoreboard objectives remove SBplaceYCon
scoreboard objectives remove SBplaceScaf
scoreboard objectives remove SBplaceObser
execute unless entity @e[type=armor_stand,tag=rr_ctf,limit=1] run scoreboard objectives remove dropPickaxe
scoreboard players reset * gamemodeID
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[type=marker,tag=PlacerClear] run function rr_sandbox:game/gameend
execute unless entity @e[type=armor_stand,tag=rr_sandbox,limit=1] run tellraw @s {"text":"Sandbox Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[type=armor_stand,tag=rr_sandbox,limit=1] run tellraw @s {"text":"Click here to disable the Sandbox Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_sandbox\""}}
scoreboard players add @e[type=armor_stand,tag=Selection,limit=1] refreshsigns 1