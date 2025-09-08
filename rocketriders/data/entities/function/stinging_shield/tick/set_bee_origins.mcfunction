data remove storage rocketriders:main stinging_shield.origin
execute on origin run data modify storage rocketriders:main stinging_shield.origin set from entity @s UUID
execute unless data storage rocketriders:main stinging_shield.origin run return run data remove storage rocketriders:main stinging_shield

data modify block ~-1 ~ ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~1 ~ ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~-2 ~-1 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~-1 ~-1 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~1 ~-1 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~-2 ~-1 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~-1 ~-2 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~1 ~-2 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~-1 ~-3 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~ ~-3 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~1 ~-3 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin
data modify block ~ ~-4 ~ bees[].entity_data.data.damage_origin.primary set from storage rocketriders:main stinging_shield.origin

data remove storage rocketriders:main stinging_shield
