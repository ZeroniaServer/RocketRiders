# reset all config, but preserve non-gameplay values
execute store success score $show_extra_player_credits var if predicate game:world_options/show_extra_player_credits/on
execute store result score $extra_match_repetitions var run scoreboard players get $extra_match_repetitions config
scoreboard players reset * config
execute if score $show_extra_player_credits var matches 1 run scoreboard players set $show_extra_player_credits config 1
execute if score $extra_match_repetitions var matches 1.. run scoreboard players operation $extra_match_repetitions config = $extra_match_repetitions var

# defaults
execute if predicate rr:default_config/impact_utilities run scoreboard players set $impact_utilities config 1
execute if predicate rr:default_config/disable_cannoning run scoreboard players set $disable_cannoning config 1
