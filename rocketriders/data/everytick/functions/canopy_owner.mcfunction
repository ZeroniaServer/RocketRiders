##Canopy searches for its owner to get tagged appropriately by team
scoreboard players operation $tempuuid playerUUID = @s pearlOwnerUUID

#Kill pearl and give back Canopy if player just respawned
tag @a[predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=fullHotbar] add tempHotbar
tag @a[predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=tempHotbar] remove fullHotbar
execute if entity @a[predicate=custom:matches_uuid,scores={deathCooldown=1..}] run tag @e[type=armor_stand,tag=Selection,tag=!givenCanopy] add tempCanopy
execute as @a[predicate=custom:matches_uuid,scores={deathCooldown=1..}] run function items:util/givecanopy
tag @a[predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=tempHotbar] add fullHotbar
tag @a[predicate=custom:matches_uuid,scores={deathCooldown=1..},tag=tempHotbar] remove tempHotbar
tag @e[tag=armor_stand,tag=Selection,tag=tempCanopy] remove givenCanopy
tag @e[tag=armor_stand,tag=Selection,tag=tempCanopy] remove tempCanopy

#Tag Canopy appropriately otherwise
execute if entity @a[team=Yellow,predicate=custom:matches_uuid] run tag @s add YellowPlat
execute if entity @a[team=Blue,predicate=custom:matches_uuid] run tag @s add BluePlat
scoreboard players reset $tempuuid playerUUID