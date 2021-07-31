##Canopy searches for its owner when it hits deploy time and gives them the threwCanopy tag
##This way, any other canopy the player has forgets them
scoreboard players operation $tempuuid playerUUID = @s pearlOwnerUUID
execute if entity @s[tag=YellowPlat] as @a[team=Yellow,predicate=custom:matches_uuid] run tag @s add threwCanopy
execute if entity @s[tag=BluePlat] as @a[team=Blue,predicate=custom:matches_uuid] run tag @s add threwCanopy
scoreboard players reset $tempuuid playerUUID