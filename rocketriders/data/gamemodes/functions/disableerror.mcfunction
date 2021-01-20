##Technical function -- makes sure gamemode datapacks are safely configured
scoreboard players remove @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..}] CmdData 1
scoreboard players remove @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=2..}] CmdData 1

execute as @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=-1},tag=!disableerror] run tellraw @a [{"text":"Error: ","color":"red"},{"selector":"@s","color":"red"},{"text":" was not properly uninstalled! Please reenable the corresponding datapack and run the uninstall function."}]
execute as @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=-1}] run tag @s add disableerror

execute unless entity @e[tag=Selection,tag=NoModesInstalled,type=armor_stand] unless entity @e[type=armor_stand,tag=gamemodeAS] run tellraw @a [{"text":"Error: No gamemodes installed! Please install at least one gamemode to play Rocket Riders.","color":"red"}]
execute unless entity @e[type=armor_stand,tag=gamemodeAS] run tag @e[tag=Selection,type=armor_stand] add NoModesInstalled
execute if entity @e[type=armor_stand,tag=gamemodeAS] run tag @e[tag=Selection,type=armor_stand] remove NoModesInstalled

execute unless entity @e[tag=Selection,tag=NoModesEnabled,type=armor_stand] if entity @e[type=armor_stand,tag=gamemodeAS] unless entity @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..1}] run tellraw @a [{"text":"Error: No gamemode datapacks enabled! Please enable at least one gamemode datapack to play Rocket Riders.","color":"red"}]
execute if entity @e[type=armor_stand,tag=gamemodeAS] unless entity @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..1}] run tag @e[tag=Selection,type=armor_stand] add NoModesEnabled
execute if entity @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..1}] run tag @e[tag=Selection,type=armor_stand] remove NoModesEnabled

execute unless entity @e[tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,type=armor_stand] run data merge block -69 192 74 {Text2: '{"text":"Missingno","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}'}