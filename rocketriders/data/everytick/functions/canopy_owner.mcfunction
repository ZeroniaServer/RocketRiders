##Canopy searches for its owner to get tagged appropriately by team
scoreboard players operation $tempuuid playerUUID = @s pearlOwnerUUID

#Kill pearl and give back Canopy if player just respawned
tag @a[x=0,predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=fullHotbar] add tempHotbar
tag @a[x=0,predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=tempHotbar] remove fullHotbar
execute as @a[x=0,predicate=custom:matches_uuid,scores={deathCooldown=1..}] run function items:util/givecanopy
tag @a[x=0,predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=tempHotbar] add fullHotbar
tag @a[x=0,predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=tempHotbar] remove tempHotbar
execute if entity @a[x=0,predicate=custom:matches_uuid,scores={deathCooldown=1..}] run kill @s

#Tag Canopy appropriately otherwise
execute if entity @a[x=0,team=Yellow,predicate=custom:matches_uuid] run tag @s add YellowPlat
execute if entity @a[x=0,team=Blue,predicate=custom:matches_uuid] run tag @s add BluePlat
scoreboard players reset $tempuuid playerUUID