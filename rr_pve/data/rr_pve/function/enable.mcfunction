tag @s remove switchGamemodes
tag @s add pveEnabled

scoreboard players reset * gamemode_components
scoreboard players set $arena/no_base_details gamemode_components 1
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.disable_team_balancing gamemode_components 1
scoreboard players set $config_override.disable_tying gamemode_components 1
scoreboard players set $config_override.hardcore gamemode_components -1
scoreboard players set $custom_staging_bossbars gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1
scoreboard players set $one_team gamemode_components 1

# items
scoreboard players set $item_pool.cluster_fireball gamemode_components -1
scoreboard players set $item_pool.icbm gamemode_components -1
