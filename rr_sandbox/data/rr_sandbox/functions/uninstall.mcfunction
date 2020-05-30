function rr_sandbox:disable
execute if entity @e[tag=rr_sandbox,limit=1] run kill @e[tag=rr_sandbox,limit=1]
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
scoreboard objectives remove dropPickaxe
scoreboard objectives remove HasDiaPickaxe
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_sandbox,limit=1] run tellraw @s {"text":"Sandbox Mode uninstalled.","color":"red","bold":"true"}