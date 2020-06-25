##Utility function for giving gamemodes unique IDs
##Necessary for installing/uninstalling gamemodes

scoreboard players add @s gamemodeID 0
execute as @s[scores={gamemodeID=0}] run scoreboard players add maxID gamemodeID 1
scoreboard players operation @s[scores={gamemodeID=0}] gamemodeID = maxID gamemodeID