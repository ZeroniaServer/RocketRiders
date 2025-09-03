## Runs at the beginning of the tick after the TNT gets spawned
tag @s add tnt.processed

# get initial data
data modify storage rocketriders:main tnt.entity_data set from entity @s {}

# Set glowing
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=Sonar] run data modify entity @s Glowing set value true

# correct creeper owner
scoreboard players set $player_owner_exists var 0
execute on origin if entity @s[type=player] run scoreboard players set $player_owner_exists var 0
execute if score $player_owner_exists var matches 0 if data storage rocketriders:main tnt.entity_data.owner run function game:tnt/correct_creeper_origin with storage rocketriders:main tnt.entity_data

# store the timestamp that this TNT will explode at
scoreboard players set @s tnt.explosion_timestamp 80
execute if data storage rocketriders:main tnt.entity_data.fuse store result score @s tnt.explosion_timestamp run data get storage rocketriders:main tnt.entity_data.fuse
scoreboard players operation @s tnt.explosion_timestamp += $gametime global
scoreboard players remove @s tnt.explosion_timestamp 1

# make punchable
execute if predicate game:modifiers/punchable_tnt/on at @s run function entities:punchable_tnt/init
