data modify storage rocketriders:match components."arena/regenerate_back_layer" set value {blue:true}
data modify storage rocketriders:match components."main_item" set value "shooting_saber"
data modify storage rocketriders:match components."shield_type" set value "checkered"

scoreboard players set $blue_team_skin match_components 1
scoreboard players set $checkered_yellow_base match_components 1
scoreboard players set $config_override.classic_team_colors match_components -1
scoreboard players set $config_override.collision_control match_components -1
scoreboard players set $config_override.disable_team_balancing match_components 1
scoreboard players set $config_override.item_stacking match_components 1
scoreboard players set $config_override.rocket_residers match_components -1
scoreboard players set $custom_match_closing_teleport_locations match_components 1
scoreboard players set $custom_pierce_prevention match_components 1
scoreboard players set $custom_team_colors match_components 1
scoreboard players set $disable_antigrief_system match_components 1
scoreboard players set $friendly_fire match_components 1
scoreboard players set $has_chase_blocks match_components 1
scoreboard players set $has_chase_crystals match_components 1
scoreboard players set $min_players_per_team match_components 2
scoreboard players set $neutral_items match_components 1
scoreboard players set $no_portals match_components 1
scoreboard players set $one_team match_components 1

# items
scoreboard players set $item_pool.cluster_fireball match_components -1
scoreboard players set $item_pool.icbm match_components -1
