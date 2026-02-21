tag @s remove switchGamemodes
tag @s add chaseEnabled

scoreboard players reset * gamemode_components
scoreboard players set $arena/no_yellow_base_details gamemode_components 1
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.collision_control gamemode_components -1
scoreboard players set $config_override.disable_team_balancing gamemode_components 1
scoreboard players set $config_override.disable_tying gamemode_components 1
scoreboard players set $config_override.item_stacking gamemode_components 1
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $custom_match_over_teleport_locations gamemode_components 1
scoreboard players set $custom_pierce_prevention gamemode_components 1
scoreboard players set $custom_staging_bossbars gamemode_components 1
scoreboard players set $custom_team_colors gamemode_components 1
scoreboard players set $disable_antigrief_system gamemode_components 1
scoreboard players set $friendly_fire gamemode_components 1
scoreboard players set $has_chase_crystals gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1
scoreboard players set $neutral_items gamemode_components 1
scoreboard players set $no_portals gamemode_components 1
scoreboard players set $one_team gamemode_components 1
scoreboard players set $red_for_blue gamemode_components 1

# items
scoreboard players set $item_pool.arrow gamemode_components 1
scoreboard players set $item_pool.cluster_fireball gamemode_components -1
scoreboard players set $item_pool.icbm gamemode_components -1
