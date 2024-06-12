###################################
## INVCOUNT: Counts all occupied ##
## slots in a player's inventory ##
###################################

execute store result score @s invCount if data entity @s Inventory[]
#Doesn't count armor
execute if items entity @s armor.head * run scoreboard players remove @s invCount 1
execute if items entity @s armor.chest * run scoreboard players remove @s invCount 1
execute if items entity @s armor.legs * run scoreboard players remove @s invCount 1
execute if items entity @s armor.feet * run scoreboard players remove @s invCount 1
#Includes items thrown by the player
execute if entity @e[x=0,type=item] run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @e[x=0,type=item] as @e[x=0,type=item] store result score @s playerUUID run data get entity @s Thrower[0]
execute if entity @e[x=0,type=item] store result score $tempuuid invCount if entity @e[x=0,type=item,predicate=custom:matches_uuid]
execute if entity @e[x=0,type=item] run scoreboard players operation @s invCount += $tempuuid invCount
scoreboard players reset $tempuuid invCount
scoreboard players reset $tempuuid playerUUID