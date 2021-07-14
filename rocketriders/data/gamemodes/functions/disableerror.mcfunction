##Technical function -- makes sure gamemode datapacks are safely configured
scoreboard players remove @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..}] CmdData 1
scoreboard players remove @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=2..}] CmdData 1

execute as @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=-1},tag=!disableerror] run tellraw @a [{"text":"Error: ","color":"red"},{"selector":"@s","color":"red"},{"text":" was not properly uninstalled! Please reenable the corresponding datapack and run the uninstall function."}]
execute as @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=-1}] run tag @s add disableerror

execute unless entity @e[type=armor_stand,tag=Selection,tag=NoModesInstalled] unless entity @e[type=armor_stand,tag=gamemodeAS] run tellraw @a [{"text":"Error: No gamemodes installed! Please install at least one gamemode to play Rocket Riders.","color":"red"}]
execute unless entity @e[type=armor_stand,tag=gamemodeAS] run tag @e[type=armor_stand,tag=Selection] add NoModesInstalled
execute if entity @e[type=armor_stand,tag=gamemodeAS] run tag @e[type=armor_stand,tag=Selection] remove NoModesInstalled

execute unless entity @e[type=armor_stand,tag=Selection,tag=NoModesEnabled] if entity @e[type=armor_stand,tag=gamemodeAS] unless entity @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..1}] run tellraw @a [{"text":"Error: No gamemode datapacks enabled! Please enable at least one gamemode datapack to play Rocket Riders.","color":"red"}]
execute if entity @e[type=armor_stand,tag=gamemodeAS] unless entity @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..1}] run tag @e[type=armor_stand,tag=Selection] add NoModesEnabled
execute if entity @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..1}] run tag @e[type=armor_stand,tag=Selection] remove NoModesEnabled

execute unless entity @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run data merge block -69 192 74 {Text2:'{"text":"Missingno","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}'}