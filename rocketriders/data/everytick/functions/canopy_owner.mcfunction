##Canopy searches for its owner to get tagged appropriately by team
scoreboard players operation $tempuuid playerUUID = @s pearlOwnerUUID
execute if entity @a[team=Yellow,predicate=custom:matches_uuid] run tag @s add YellowPlat
execute if entity @a[team=Blue,predicate=custom:matches_uuid] run tag @s add BluePlat
scoreboard players reset $tempuuid playerUUID