# reset all config, but preserve non-gameplay values
execute store success score $show_extra_player_credits var if predicate game:world_options/show_extra_player_credits/on
execute store result score $extra_match_repetitions var run scoreboard players get $extra_match_repetitions config
execute store result score $lock_modification_room var run scoreboard players get $lock_modification_room config
execute store result score $disable_death_messages var run scoreboard players get $disable_death_messages config
execute store result score $disable_splash_messages var run scoreboard players get $disable_splash_messages config
execute store result score $disable_titles var run scoreboard players get $disable_titles config
execute store result score $max_players var run scoreboard players get $max_players config
execute store result score $show_debug_logs var run scoreboard players get $show_debug_logs config
execute store result score $1_4_0_update var run scoreboard players get $1_4_0_update config
execute store result score $colored_portal_frames var run scoreboard players get $colored_portal_frames config
execute store result score $geysers var run scoreboard players get $geysers config
scoreboard players reset * config
execute if score $show_extra_player_credits var matches 1 run scoreboard players set $show_extra_player_credits config 1
execute if score $extra_match_repetitions var matches 1.. run scoreboard players operation $extra_match_repetitions config = $extra_match_repetitions var
execute if score $lock_modification_room var matches 1 run scoreboard players set $lock_modification_room config 1
execute if score $disable_death_messages var matches 1 run scoreboard players set $disable_death_messages config 1
execute if score $disable_splash_messages var matches 1 run scoreboard players set $disable_splash_messages config 1
execute if score $disable_titles var matches 1 run scoreboard players set $disable_titles config 1
execute if score $max_players var matches 1.. run scoreboard players operation $max_players config = $max_players var
execute if score $show_debug_logs var matches 1.. run scoreboard players operation $show_debug_logs config = $show_debug_logs var
execute if score $1_4_0_update var matches 1.. run scoreboard players operation $1_4_0_update config = $1_4_0_update var
execute if score $colored_portal_frames var matches 1.. run scoreboard players operation $colored_portal_frames config = $colored_portal_frames var
execute if score $geysers var matches 1.. run scoreboard players operation $geysers config = $geysers var

# defaults
execute if predicate rr:default_config/impact_utilities run scoreboard players set $impact_utilities config 1
execute if predicate rr:default_config/disable_cannoning run scoreboard players set $disable_cannoning config 1
