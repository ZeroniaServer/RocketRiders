###################################
## INVCOUNT: Counts all occupied ##
## slots in a player's inventory ##
###################################

scoreboard players add @s[nbt={Inventory:[{Slot:0b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:1b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:2b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:3b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:4b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:5b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:6b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:7b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:8b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:9b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:10b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:11b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:12b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:13b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:14b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:15b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:16b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:17b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:18b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:19b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:20b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:21b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:22b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:23b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:24b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:25b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:26b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:27b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:28b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:29b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:30b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:31b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:32b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:33b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:34b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:35b}]}] invCount 1
scoreboard players add @s[nbt={Inventory:[{Slot:-106b}]}] invCount 1
#Includes items thrown by the player
execute at @s if entity @e[type=item,limit=1,distance=..2] run scoreboard players add @s invCount 1