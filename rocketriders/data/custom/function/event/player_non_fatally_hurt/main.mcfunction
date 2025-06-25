advancement revoke @s only custom:event/player_non_fatally_hurt

## Forget previous creeper
scoreboard players reset @s last_creeper_damage_origin_uuid.0
scoreboard players reset @s last_creeper_damage_origin_uuid.1
scoreboard players reset @s last_creeper_damage_origin_uuid.2
scoreboard players reset @s last_creeper_damage_origin_uuid.3

## Extract creeper explosion origin UUID
# ignore UtilKilled entities for things that still use the legacy system
execute on attacker if entity @s[tag=UtilKilled] run return fail

# get origin uuid from creeper if it exists, otherwise do nothing
data modify storage rocketriders:main player_non_fatally_hurt set value {}
execute on attacker run data modify storage rocketriders:main player_non_fatally_hurt.origin set from entity @s[type=creeper] data.explosion.origin
execute unless data storage rocketriders:main player_non_fatally_hurt.origin run return fail

# save origin uuid to player scores
execute store result score @s last_creeper_damage_origin_uuid.0 run data get storage rocketriders:main player_non_fatally_hurt.origin[0]
execute store result score @s last_creeper_damage_origin_uuid.1 run data get storage rocketriders:main player_non_fatally_hurt.origin[1]
execute store result score @s last_creeper_damage_origin_uuid.2 run data get storage rocketriders:main player_non_fatally_hurt.origin[2]
execute store result score @s last_creeper_damage_origin_uuid.3 run data get storage rocketriders:main player_non_fatally_hurt.origin[3]
 