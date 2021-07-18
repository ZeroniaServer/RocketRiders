###################################
## INVCOUNT: Counts all occupied ##
## slots in a player's inventory ##
###################################

execute store result score @s invCount if data entity @s Inventory[]
#Doesn't count Shooting Saber or armor (accounts for 4 slots)
scoreboard players remove @s invCount 4
#Includes items thrown by the player
execute at @s if entity @e[type=item,limit=1,distance=..2] run scoreboard players add @s invCount 1