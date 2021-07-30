##Canopy searches for its owner when it hits deploy time and gives them the threwCanopy tag so any other canopy the player has forgets them
tag @s add currentPearl
execute as @p[tag=!checkedOwner,team=!Spectator,team=!Lobby] at @s run function everytick:canopy_threwcanopy
execute unless entity @p[tag=ownerFound] at @s run function everytick:canopy_uponspawn
execute if entity @p[tag=ownerFound] run tag @s remove currentPearl
execute if entity @p[tag=ownerFound] run tag @a remove checkedOwner
execute if entity @p[tag=ownerFound] run tag @a remove ownerFound