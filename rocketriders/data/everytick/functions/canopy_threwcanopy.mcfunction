##Gives the owner of this Canopy the threwCanopy tag
execute if score @s playerUUID = @e[type=ender_pearl,tag=currentPearl,limit=1,sort=nearest] pearlOwnerUUID run tag @s add ownerFound
tag @s[tag=ownerFound] add threwCanopy