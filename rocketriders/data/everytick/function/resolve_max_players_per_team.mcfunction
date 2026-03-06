# Reset config and match component scores if not in the valid range.
execute if score $max_players_per_team match_components matches ..0 run scoreboard players reset $max_players_per_team match_components
execute if score $max_players config matches ..0 run scoreboard players reset $max_players config

# Set it to the match component value (integer limit if not specified).
execute unless score $max_players_per_team match_components matches 1..2147483647 run scoreboard players set $max_players_per_team global 2147483647
execute if score $max_players_per_team match_components matches 1..2147483647 run scoreboard players operation $max_players_per_team global = $max_players_per_team match_components

# If config specifies it should be lower, set it to that instead. (ceil(max_players/2) if both teams are enabled, or max_players if only one team is enabled)
execute if score $max_players config matches 1.. run scoreboard players operation $config_based_max_players_per_team var = $max_players config
execute if score $max_players config matches 1.. run scoreboard players add $config_based_max_players_per_team var 1
execute if score $max_players config matches 1.. unless predicate game:match_components/one_team run scoreboard players operation $config_based_max_players_per_team var /= $2 constant
execute if score $max_players config matches 1.. if score $config_based_max_players_per_team var < $max_players_per_team global run scoreboard players operation $max_players_per_team global = $config_based_max_players_per_team var

# If smaller than the minimum number of players required for the current gamemode, clamp it to that.
execute if score $max_players_per_team global < $min_players_per_team match_components run scoreboard players operation $max_players_per_team global = $min_players_per_team match_components
