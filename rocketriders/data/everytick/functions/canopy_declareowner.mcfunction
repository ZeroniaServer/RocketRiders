##Detects the owner of this Canopy and tags the ender pearl appropriately by team
execute if score @s playerUUID = @e[type=ender_pearl,tag=currentPearl,limit=1,sort=nearest] pearlOwnerUUID run tag @s add ownerFound
execute if entity @s[tag=ownerFound,team=Blue] run tag @e[type=ender_pearl,tag=currentPearl,limit=1,sort=nearest] add BluePlat
execute if entity @s[tag=ownerFound,team=Yellow] run tag @e[type=ender_pearl,tag=currentPearl,limit=1,sort=nearest] add YellowPlat
tag @s add checkedOwner