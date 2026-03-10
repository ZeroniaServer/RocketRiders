##Utility function for giving game modes unique IDs
##Necessary for installing/uninstalling game modes

scoreboard players add @s gamemodeID 0
execute if entity @s[scores={gamemodeID=0}] run scoreboard players add maxID gamemodeID 1
scoreboard players operation @s[scores={gamemodeID=0}] gamemodeID = maxID gamemodeID
scoreboard players add @s CmdData 1
scoreboard players add @s[tag=disableerror] CmdData 1
tag @s remove enabled
tag @s remove disableerror