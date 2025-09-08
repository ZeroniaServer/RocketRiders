scoreboard players set $attacking_player_exists var 0
execute on attacker if entity @s[type=player] run scoreboard players set $attacking_player_exists var 1
execute if score $attacking_player_exists var matches 1 run return run function custom:event/player_directly_attacked_by_another_player/reset_damage_origins

scoreboard players set $attacker_exists var 0
execute on attacker run scoreboard players set $attacker_exists var 1
execute if score $attacker_exists var matches 0 run return 0

data modify storage rocketriders:main update_damage_origins set value {}
execute on attacker if predicate custom:damage_origin run data modify storage rocketriders:main update_damage_origins.damage_origin set from entity @s data.damage_origin

tag @s add update_damage_origins.this
execute if data storage rocketriders:main update_damage_origins.damage_origin.primary run function custom:target_uuid {read_from:"storage rocketriders:main update_damage_origins.damage_origin.primary",run:"execute if entity @s[tag=update_damage_origins.this] run data remove storage rocketriders:main update_damage_origins.damage_origin.primary"}
execute if data storage rocketriders:main update_damage_origins.damage_origin.secondary run function custom:target_uuid {read_from:"storage rocketriders:main update_damage_origins.damage_origin.secondary",run:"execute if entity @s[tag=update_damage_origins.this] run data remove storage rocketriders:main update_damage_origins.damage_origin.secondary"}
tag @s remove update_damage_origins.this

scoreboard players set $secondary_as_primary var 0
execute if data storage rocketriders:main update_damage_origins.damage_origin.secondary unless data storage rocketriders:main update_damage_origins.damage_origin.primary run scoreboard players set $secondary_as_primary var 1
execute if score $secondary_as_primary var matches 1 run data modify storage rocketriders:main update_damage_origins.damage_origin.primary set from storage rocketriders:main update_damage_origins.damage_origin.secondary
execute if score $secondary_as_primary var matches 1 run data remove storage rocketriders:main update_damage_origins.damage_origin.secondary

execute unless data storage rocketriders:main update_damage_origins.damage_origin.primary unless data storage rocketriders:main update_damage_origins.damage_origin.secondary run return 0

function custom:event/player_directly_attacked_by_another_player/reset_damage_origins
execute if data storage rocketriders:main update_damage_origins.damage_origin.primary store result score @s primary_damage_origin_uuid.0 run data get storage rocketriders:main update_damage_origins.damage_origin.primary[0]
execute if data storage rocketriders:main update_damage_origins.damage_origin.primary store result score @s primary_damage_origin_uuid.1 run data get storage rocketriders:main update_damage_origins.damage_origin.primary[1]
execute if data storage rocketriders:main update_damage_origins.damage_origin.primary store result score @s primary_damage_origin_uuid.2 run data get storage rocketriders:main update_damage_origins.damage_origin.primary[2]
execute if data storage rocketriders:main update_damage_origins.damage_origin.primary store result score @s primary_damage_origin_uuid.3 run data get storage rocketriders:main update_damage_origins.damage_origin.primary[3]
execute if data storage rocketriders:main update_damage_origins.damage_origin.secondary store result score @s secondary_damage_origin_uuid.0 run data get storage rocketriders:main update_damage_origins.damage_origin.secondary[0]
execute if data storage rocketriders:main update_damage_origins.damage_origin.secondary store result score @s secondary_damage_origin_uuid.1 run data get storage rocketriders:main update_damage_origins.damage_origin.secondary[1]
execute if data storage rocketriders:main update_damage_origins.damage_origin.secondary store result score @s secondary_damage_origin_uuid.2 run data get storage rocketriders:main update_damage_origins.damage_origin.secondary[2]
execute if data storage rocketriders:main update_damage_origins.damage_origin.secondary store result score @s secondary_damage_origin_uuid.3 run data get storage rocketriders:main update_damage_origins.damage_origin.secondary[3]
return 2
