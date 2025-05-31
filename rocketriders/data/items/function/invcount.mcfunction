###################################
## INVCOUNT: Counts all occupied ##
## slots in a player's inventory ##
###################################

#Includes container.*, weapon.offhand, and player.cursor
execute store result score @s invCount if data entity @s Inventory[]
execute if items entity @s weapon.offhand * run scoreboard players add @s invCount 1
execute if items entity @s player.cursor * run scoreboard players add @s invCount 1

#Includes items thrown by the player
tag @s add invCount.this
execute as @e[x=0,type=item] if items entity @s contents * on origin if entity @s[type=player,tag=invCount.this] run scoreboard players add @s invCount 1
tag @s remove invCount.this
