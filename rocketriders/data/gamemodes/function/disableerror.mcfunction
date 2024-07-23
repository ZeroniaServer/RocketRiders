##Technical function -- makes sure gamemode datapacks are safely configured
scoreboard players remove @e[x=0,type=armor_stand,tag=gamemodeAS,scores={CmdData=0..}] CmdData 1
scoreboard players remove @e[x=0,type=armor_stand,tag=gamemodeAS,scores={CmdData=1..}] CmdData 1

execute as @e[x=0,type=armor_stand,tag=gamemodeAS,scores={CmdData=-1},tag=!disableerror] run tellraw @a[x=0] [{"text":"Error: ","color":"red"},{"selector":"@s","color":"red"},{"text":" was not properly uninstalled! Please reenable the corresponding datapack and run the uninstall function."}]
execute as @e[x=0,type=armor_stand,tag=gamemodeAS,scores={CmdData=-1}] run tag @s add disableerror

execute unless score $reloaded CmdData matches 1..100 unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoModesInstalled] unless entity @e[x=0,type=armor_stand,tag=gamemodeAS] run tellraw @a[x=0] [{"text":"Error: No gamemodes installed! Please install at least one gamemode to play Rocket Riders.","color":"red"}]
execute unless score $reloaded CmdData matches 1..100 unless entity @e[x=0,type=armor_stand,tag=gamemodeAS] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add NoModesInstalled
execute unless score $reloaded CmdData matches 1..100 if entity @e[x=0,type=armor_stand,tag=gamemodeAS] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoModesInstalled
execute if score $reloaded CmdData matches 1..100 run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoModesInstalled

execute unless score $reloaded CmdData matches 1..100 unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoModesEnabled] if entity @e[x=0,type=armor_stand,tag=gamemodeAS] unless entity @e[x=0,type=armor_stand,tag=gamemodeAS,tag=enabled] run tellraw @a[x=0] [{"text":"Error: No gamemode datapacks enabled! Please enable at least one gamemode datapack to play Rocket Riders.","color":"red"}]
execute unless score $reloaded CmdData matches 1..100 if entity @e[x=0,type=armor_stand,tag=gamemodeAS] unless entity @e[x=0,type=armor_stand,tag=gamemodeAS,tag=enabled] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add NoModesEnabled
execute unless score $reloaded CmdData matches 1..100 if entity @e[x=0,type=armor_stand,tag=gamemodeAS,tag=enabled] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoModesEnabled
execute if score $reloaded CmdData matches 1..100 run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoModesEnabled

execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd,scores={endtimer=1..}] run tag @s add GameEnd

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoModesEnabled,tag=!NoModesInstalled,scores={SetGamemode=0}] run tellraw @a[x=0] [{"text":"Warning: Tried to enable a gamemode that is not installed. Force clearing arena with a different gamemode as a rescue measure.","color":"red"}]
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoModesEnabled,tag=!NoModesInstalled,scores={SetGamemode=0}] SetGamemode 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoModesEnabled,tag=!NoModesInstalled,scores={SetGamemode=1}] run function arenaclear:forceareaclear

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1] store result score modesInstalled gamemodeID if entity @e[x=0,type=armor_stand,tag=gamemodeAS]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1] if score maxID gamemodeID > modesInstalled gamemodeID run scoreboard players operation maxID gamemodeID = modesInstalled gamemodeID
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoModesEnabled] if score @s SetGamemode > modesInstalled gamemodeID run scoreboard players operation @s SetGamemode = modesInstalled gamemodeID
scoreboard players reset modesInstalled gamemodeID