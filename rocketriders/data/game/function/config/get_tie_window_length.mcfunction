## Overrides
execute if predicate game:game_rules/tie_window_length/__forced_zero run return 0
execute if score $config_override.tie_window_length match_components matches 1.. run return run scoreboard players get $config_override.tie_window_length match_components

## Config
execute if score $tie_window_length config matches ..-1 run return 0
execute unless predicate game:feature_flags/1_4_0_update/on run return 5
execute unless score $tie_window_length config matches 1.. run return 5
execute if score $tie_window_length config matches 11.. run return 10
return run scoreboard players get $tie_window_length config
