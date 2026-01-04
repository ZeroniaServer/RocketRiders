tag @s add InRanked
data modify storage rocketriders:main track_player.uuid set from entity @s UUID
execute if predicate custom:team/blue positioned 0.0 0.0 0.0 run function custom:summon_persistent_marker_aec {modifiers:{nbt:{Tags:["1v1_duel_player_tracker","1v1_duel_player_tracker.blue"]},run:"data modify entity @s Owner set from storage rocketriders:main track_player.uuid"}}
execute if predicate custom:team/yellow positioned 0.0 0.0 0.0 run function custom:summon_persistent_marker_aec {modifiers:{nbt:{Tags:["1v1_duel_player_tracker","1v1_duel_player_tracker.yellow"]},run:"data modify entity @s Owner set from storage rocketriders:main track_player.uuid"}}
