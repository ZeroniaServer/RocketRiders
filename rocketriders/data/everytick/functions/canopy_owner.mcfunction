##Detects the owner of this Canopy and tags the ender pearl appropriately by team
tag @s add currentPearl
execute as @p[tag=!checkedOwner] at @s run function everytick:canopy_owner2
execute unless entity @p[tag=ownerFound] at @s run function everytick:canopy_owner
execute if entity @p[tag=ownerFound] run tag @s remove currentPearl
execute if entity @p[tag=ownerFound] run tag @a remove checkedOwner
execute if entity @p[tag=ownerFound] run tag @a remove ownerFound