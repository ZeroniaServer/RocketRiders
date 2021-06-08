tag @e[tag=Selection,tag=sandboxEnabled,type=armor_stand,limit=1] add needsForceClear
function rr_sandbox:disable
execute if entity @e[tag=rr_sandbox,limit=1,type=armor_stand] run kill @e[tag=rr_sandbox,limit=1,type=armor_stand]
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
execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run scoreboard objectives remove HasPickaxe
execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run scoreboard objectives remove dropPickaxe
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_sandbox,limit=1,type=armor_stand] run tellraw @s {"text":"Sandbox Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[tag=rr_sandbox,limit=1,type=armor_stand] run tellraw @s {"text":"Click here to disable the Sandbox Mode datapack (recommended).","color":"red","underline":true,"clickEvent":{"action":"run_command","value":"/datapack disable \"file/rr_sandbox\""}}
execute unless entity @e[tag=PlacerClear,type=marker] run function game:forcestop
scoreboard players add @e[tag=Selection,type=armor_stand,limit=1] refreshsigns 1