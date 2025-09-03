advancement revoke @s only custom:event/player_non_fatally_hurt

## Extract creeper explosion origin UUID
# Forget previous creeper
scoreboard players reset @s last_creeper_damage_origin_uuid.0
scoreboard players reset @s last_creeper_damage_origin_uuid.1
scoreboard players reset @s last_creeper_damage_origin_uuid.2
scoreboard players reset @s last_creeper_damage_origin_uuid.3

# Get origin uuid from creeper if it exists, otherwise do nothing
data modify storage rocketriders:main player_non_fatally_hurt set value {}
execute on attacker run data modify storage rocketriders:main player_non_fatally_hurt.origin set from entity @s[type=creeper] data.explosion.origin

execute store success score $creeper_damage_origin var if data storage rocketriders:main player_non_fatally_hurt.origin
execute if score $creeper_damage_origin var matches 1 store result score @s last_creeper_damage_origin_uuid.0 run data get storage rocketriders:main player_non_fatally_hurt.origin[0]
execute if score $creeper_damage_origin var matches 1 store result score @s last_creeper_damage_origin_uuid.1 run data get storage rocketriders:main player_non_fatally_hurt.origin[1]
execute if score $creeper_damage_origin var matches 1 store result score @s last_creeper_damage_origin_uuid.2 run data get storage rocketriders:main player_non_fatally_hurt.origin[2]
execute if score $creeper_damage_origin var matches 1 store result score @s last_creeper_damage_origin_uuid.3 run data get storage rocketriders:main player_non_fatally_hurt.origin[3]
