###################################
## INVCOUNT: Counts all occupied ##
## slots in a player's inventory ##
###################################

execute store result score @s invCount if data entity @s Inventory[]
#Doesn't count armor
scoreboard players remove @s[nbt={Inventory:[{Slot:103b}]}] invCount 1
scoreboard players remove @s[nbt={Inventory:[{Slot:102b}]}] invCount 1
scoreboard players remove @s[nbt={Inventory:[{Slot:101b}]}] invCount 1
scoreboard players remove @s[nbt={Inventory:[{Slot:100b}]}] invCount 1
#Includes items thrown by the player
execute if entity @e[type=item] run scoreboard players operation $tempitems playerUUID = @s playerUUID
execute if entity @e[type=item] as @e[type=item] store result score @s playerUUID run data get entity @s Thrower[0]
execute if entity @e[type=item] store result score $tempitems invCount if entity @e[type=item,predicate=custom:matches_uuid]
execute if entity @e[type=item] run scoreboard players operation @s invCount += $tempitems invCount
scoreboard players reset $tempitems invCount
scoreboard players reset $tempitems playerUUID