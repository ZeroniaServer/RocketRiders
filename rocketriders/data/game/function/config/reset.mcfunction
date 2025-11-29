execute store success score $show_extra_player_credits var if predicate game:world_options/show_extra_player_credits/on
scoreboard players reset * config
execute if score $show_extra_player_credits var matches 1 run scoreboard players set $show_extra_player_credits config 1

execute if predicate rr:default_config/impact_utilities run scoreboard players set $impact_utilities config 1
execute if predicate rr:default_config/disable_cannoning run scoreboard players set $disable_cannoning config 1
