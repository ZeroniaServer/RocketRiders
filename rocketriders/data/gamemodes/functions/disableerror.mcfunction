##Technical function -- makes sure gamemode datapacks are safely configured
scoreboard players remove @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=0..}] CmdData 1
scoreboard players remove @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=1..}] CmdData 1

execute as @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=-1},tag=!disableerror] run tellraw @a [{"text":"Error: ","color":"red"},{"selector":"@s","color":"red"},{"text":" was not properly uninstalled! Please reenable the corresponding datapack and run the uninstall function."}]
execute as @e[type=armor_stand,tag=gamemodeAS,scores={CmdData=-1}] run tag @s add disableerror

execute unless entity @e[type=armor_stand,tag=Selection,tag=NoModesInstalled] unless entity @e[type=armor_stand,tag=gamemodeAS] run tellraw @a [{"text":"Error: No gamemodes installed! Please install at least one gamemode to play Rocket Riders.","color":"red"}]
execute unless entity @e[type=armor_stand,tag=gamemodeAS] run tag @e[type=armor_stand,tag=Selection] add NoModesInstalled
execute if entity @e[type=armor_stand,tag=gamemodeAS] run tag @e[type=armor_stand,tag=Selection] remove NoModesInstalled

execute unless entity @e[type=armor_stand,tag=Selection,tag=NoModesEnabled] if entity @e[type=armor_stand,tag=gamemodeAS] unless entity @e[type=armor_stand,tag=gamemodeAS,tag=enabled] run tellraw @a [{"text":"Error: No gamemode datapacks enabled! Please enable at least one gamemode datapack to play Rocket Riders.","color":"red"}]
execute if entity @e[type=armor_stand,tag=gamemodeAS] unless entity @e[type=armor_stand,tag=gamemodeAS,tag=enabled] run tag @e[type=armor_stand,tag=Selection] add NoModesEnabled
execute if entity @e[type=armor_stand,tag=gamemodeAS,tag=enabled] run tag @e[type=armor_stand,tag=Selection] remove NoModesEnabled

execute as @e[type=armor_stand,tag=Selection,tag=!GameEnd,scores={endtimer=1..}] run tag @s add GameEnd

execute if entity @e[type=armor_stand,tag=Selection,tag=NoModesEnabled,tag=!NoModesInstalled,scores={SetGamemode=0}] run tellraw @a [{"text":"Warning: Tried to enable a gamemode that is not installed. Force clearing arena with a different gamemode as a rescue measure.","color":"red"}]
scoreboard players add @e[type=armor_stand,tag=Selection,tag=NoModesEnabled,tag=!NoModesInstalled,scores={SetGamemode=0}] SetGamemode 1
execute as @e[type=armor_stand,tag=Selection,tag=NoModesEnabled,tag=!NoModesInstalled,scores={SetGamemode=1}] run function arenaclear:forceareaclear