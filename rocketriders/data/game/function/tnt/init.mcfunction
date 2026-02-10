## Runs at the beginning of the tick after the TNT gets spawned
tag @s add tnt.processed

# get initial data
data modify storage rocketriders:main tnt.entity_data set from entity @s {}

# Set glowing
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on run function game:glowing/on

# correct creeper owner
scoreboard players set $player_owner_exists var 0
execute on origin if entity @s[type=player] run scoreboard players set $player_owner_exists var 0
execute if score $player_owner_exists var matches 0 if data storage rocketriders:main tnt.entity_data.owner run function game:tnt/correct_creeper_origin with storage rocketriders:main tnt.entity_data

# store the timestamp that this TNT will explode at
scoreboard players set @s tnt.explosion_timestamp 80
execute unless predicate game:modifiers/instant_tnt_explosions/on if data storage rocketriders:main tnt.entity_data.fuse store result score @s tnt.explosion_timestamp run data get storage rocketriders:main tnt.entity_data.fuse

execute if predicate game:modifiers/instant_tnt_explosions/on run scoreboard players add $instant_explosion_buffer var 1
execute if predicate game:modifiers/instant_tnt_explosions/on store result score @s tnt.explosion_timestamp run scoreboard players operation $instant_explosion_buffer var %= $4 constant

execute if score @s tnt.explosion_timestamp matches ..0 run scoreboard players set @s tnt.explosion_timestamp 1
scoreboard players operation @s tnt.explosion_timestamp += $gametime global
scoreboard players remove @s tnt.explosion_timestamp 1

# make punchable
execute if predicate game:modifiers/punchable_tnt/on unless predicate game:modifiers/instant_tnt_explosions/on at @s run function entities:type/punchable_tnt/init
