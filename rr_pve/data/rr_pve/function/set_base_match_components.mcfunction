data modify storage rocketriders:match components."main_item" set value "shooting_saber"

scoreboard players set $config_override.arena_details/bottom match_components -1
scoreboard players set $config_override.arena_details/middle match_components -1
scoreboard players set $config_override.arena_details/top match_components -1
scoreboard players set $config_override.arena_details/top_sides match_components -1
scoreboard players set $config_override.disable_team_balancing match_components 1
scoreboard players set $config_override.disable_tying match_components 1
scoreboard players set $config_override.hardcore match_components -1
scoreboard players set $one_team match_components 1

# items
scoreboard players set $item_pool.cluster_fireball match_components -1
scoreboard players set $item_pool.icbm match_components -1
