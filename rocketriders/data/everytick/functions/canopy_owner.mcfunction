##Detects the owner of this Canopy and tags the ender pearl appropriately by team
tag @s add currentPearl
execute as @p[tag=!checkedOwner] if score @s playerUUID = @e[type=ender_pearl,tag=currentPearl,limit=1,sort=nearest] pearlOwnerUUID run tag @s add ownerFound
execute as @p[tag=ownerFound,team=Blue] run tag @e[type=ender_pearl,tag=currentPearl,limit=1,sort=nearest] add BluePlat
execute as @p[tag=ownerFound,team=Yellow] run tag @e[type=ender_pearl,tag=currentPearl,limit=1,sort=nearest] add YellowPlat
tag @p[tag=!checkedOwner] add checkedOwner
execute unless entity @p[tag=ownerFound] at @s run function everytick:canopy_owner
execute if entity @p[tag=ownerFound] run tag @s remove currentPearl
execute as @p[tag=ownerFound] run tag @s add threwCanopy
execute if entity @p[tag=ownerFound] run tag @a remove checkedOwner
execute if entity @p[tag=ownerFound] run tag @a remove ownerFound