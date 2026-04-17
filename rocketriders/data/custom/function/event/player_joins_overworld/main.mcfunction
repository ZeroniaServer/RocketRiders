# Delete vehicles
execute if predicate custom:entity/has_vehicle at @s run function custom:event/player_joins_overworld/delete_vehicle/player

# If player had previously joined, give them a storage entry (legacy score)
execute if score @s firstJoined matches 1.. run function custom:player/playerdata/save

# Reset team, scores, triggers, and tags
team leave @s
scoreboard players reset @s
function custom:event/player_joins_overworld/reset_tags/main

# Reset items, effects, and attributes
effect clear @s
clear @s *
function custom:event/player_joins_overworld/reset_attributes/main

# Update join state and time_since_joined_overworld
scoreboard players set @s event.player_joins_overworld.state -1
scoreboard players set @s time_since_joined_overworld 0

# Update is_dead flag
tag @a[x=0] add is_dead
tag @e[x=0,type=player] remove is_dead

# Reset scoreboards for ingame statistics/advancements
function everytick:score_reset

# Join lobby
function custom:player/team/join_lobby
gamemode adventure @s
tp @s -43 211 78 90 0
tp @s @s
spawnpoint @s -43 211 78 90 0
effect give @s instant_health 1 100 true
effect give @s resistance infinite 100 true
effect give @s night_vision infinite 100 true
title @s times 5 30 5
title @s actionbar ""
title @s title ""
title @s subtitle ""
function custom:player/reset_inventory

# Advancements
execute if predicate game:achievements_can_be_awarded run function achievements:roots
execute if predicate rr:server_mode/realms run advancement grant @s only 2811iaj1:root

# Load data (and initialise if new player)
execute unless function custom:player/playerdata/load run function custom:event/player_joins_overworld/new_player

# Summon player monitor
data modify storage rocketriders:main player_monitoring set value {entity_data:{CustomName:[{color:"gray",italic:true,text:"Player Monitor ("},"Unknown Player",")"],data:{player_monitoring:{}}}}
function custom:resolve_text_component {text_component:{selector:"@s"},write_to:"storage rocketriders:main player_monitoring.text_component"}
data modify storage rocketriders:main player_monitoring.entity_data.Owner set from storage rocketriders:main player_monitoring.text_component.hover_event.uuid
data modify storage rocketriders:main player_monitoring.entity_data.data.player_monitoring.uuid set from storage rocketriders:main player_monitoring.text_component.hover_event.uuid
data modify storage rocketriders:main player_monitoring.entity_data.data.player_monitoring.name set from storage rocketriders:main player_monitoring.text_component.hover_event.name
data modify storage rocketriders:main player_monitoring.entity_data.CustomName[1] set from storage rocketriders:main player_monitoring.text_component.hover_event.name
execute positioned 25.5 184.5 -5.5 run function custom:summon_persistent_marker_aec {modifiers:{nbt:{Tags:["player_monitoring"]},run:"data modify entity @s {} merge from storage rocketriders:main player_monitoring.entity_data"}}

# Set play time saving delays
scoreboard players set #last play_time_save_cooldown -1
execute in minecraft:overworld as @a[x=0] store result score @s play_time_save_cooldown run scoreboard players add #last play_time_save_cooldown 1

# Notify voting options for server mode
execute if predicate rr:server_mode/cubekrowd_voting if predicate game:phase/staging/configuration run function servermode:notifyvote