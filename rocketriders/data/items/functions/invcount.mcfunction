###################################
## INVCOUNT: Counts all occupied ##
## slots in a player's inventory ##
###################################

execute store result score @s invCount if data entity @s Inventory[]
#Doesn't count armor or main weapon
scoreboard players remove @s[nbt={Inventory:[{Slot:103b}]}] invCount 1
scoreboard players remove @s[nbt={Inventory:[{Slot:102b}]}] invCount 1
scoreboard players remove @s[nbt={Inventory:[{Slot:101b}]}] invCount 1
scoreboard players remove @s[nbt={Inventory:[{Slot:100b}]}] invCount 1
scoreboard players remove @s invCount 1
#Includes items thrown by the player
execute at @s if entity @e[type=item,limit=1,distance=..2] run scoreboard players add @s invCount 1