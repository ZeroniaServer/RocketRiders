##Canopy searches for its owner recursively to get tagged appropriately by team
tag @s add currentPearl
execute as @p[tag=!checkedOwner,team=!Spectator,team=!Lobby] at @s run function everytick:canopy_declareowner
execute unless entity @p[tag=ownerFound] at @s run function everytick:canopy_checkowner
execute if entity @p[tag=ownerFound] run tag @s remove currentPearl
execute if entity @p[tag=ownerFound] run tag @a remove checkedOwner
execute if entity @p[tag=ownerFound] run tag @a remove ownerFound