tag @s remove switchGamemodes
tag @s add powerupsEnabled

scoreboard players reset * gamemode_components
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $config_override.special_treatment gamemode_components -1
scoreboard players set $custom_base_frames gamemode_components 1
scoreboard players set $custom_spawnpoint_block_protection gamemode_components 1
scoreboard players set $has_powerups gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1
scoreboard players set $max_players_per_team gamemode_components 2147483647
scoreboard players set $min_players_per_team gamemode_components 1

# items
scoreboard players set $item_pool.cluster_fireball gamemode_components -1
scoreboard players set $item_pool.icbm gamemode_components -1

scoreboard players set $cubekrowd/disable_shield_or_obsidian_shield gamemode_components 1
scoreboard players set $cubekrowd/disable_nova_rocket_or_fireball gamemode_components 1
scoreboard players set $cubekrowd/disable_all_but_5_non_lightning_missiles gamemode_components 1
scoreboard players set $cubekrowd/disable_one_lightning_missile gamemode_components 1
