# Delete vehicles
execute if predicate custom:has_vehicle at @s run function custom:event/player_joins_overworld/delete_vehicle/player

# If player had previously joined, give them a storage entry (legacy score)
execute if score @s firstJoined matches 1.. run function custom:player_action/playerdata/save

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
scoreboard players set @a[x=0] flag.is_dead 1
scoreboard players set @e[x=0,type=player] flag.is_dead 0

# Reset advancement progress for the single-match counter achievements
function everytick:score_reset_advancements

# Join lobby
function custom:team/join_lobby
gamemode survival @s
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

# Advancements
execute if predicate game:achievements_can_be_awarded run function achievements:roots
execute if predicate rr:server_mode/realms run advancement grant @s only 2811iaj1:root

# Load data (and initialise if new player)
execute unless function custom:player_action/playerdata/load run function custom:event/player_joins_overworld/new_player

# Summon player monitor
data modify storage rocketriders:main player_monitoring set value {entity_data:{CustomName:[{color:"gray",italic:true,text:"Player Monitor ("},"Unknown Player",")"],data:{player_monitoring:{}}}}
function custom:resolve_text_component {text_component:{selector:"@s"},write_to:"storage rocketriders:main player_monitoring.text_component"}
data modify storage rocketriders:main player_monitoring.entity_data.Owner set from storage rocketriders:main player_monitoring.text_component.hover_event.uuid
data modify storage rocketriders:main player_monitoring.entity_data.data.player_monitoring.uuid set from storage rocketriders:main player_monitoring.text_component.hover_event.uuid
data modify storage rocketriders:main player_monitoring.entity_data.data.player_monitoring.name set from storage rocketriders:main player_monitoring.text_component.hover_event.name
data modify storage rocketriders:main player_monitoring.entity_data.CustomName[1] set from storage rocketriders:main player_monitoring.text_component.hover_event.name
execute positioned 25.5 184.5 -5.5 run function custom:summon_persistent_marker_aec {modifiers:{nbt:{Tags:["player_monitoring"]},run:"data modify entity @s {} merge from storage rocketriders:main player_monitoring.entity_data"}}
