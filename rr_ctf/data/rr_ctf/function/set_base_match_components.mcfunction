data modify storage rocketriders:match components."arena/base_materials" set value {front:"concrete",middle:"concrete",back:"end_stone"}

scoreboard players set $additional_canopy_available match_components 1
scoreboard players set $arena/bedrock_frame match_components 1
scoreboard players set $arena/regenerate_back_layer match_components 1
scoreboard players set $armor/generic match_components 1
scoreboard players set $config_override.collision_control match_components -1
scoreboard players set $config_override.rocket_residers match_components -1
scoreboard players set $custom_pierce_prevention match_components 1
scoreboard players set $has_flags match_components 1
scoreboard players set $lower_void match_components 1
scoreboard players set $main_item/piercing_pickaxe match_components 1
scoreboard players set $min_players_per_team match_components 1
scoreboard players set $no_portals match_components 1

# items
scoreboard players set $item_pool.arrow match_components -1
scoreboard players set $item_pool.canopy match_components 1
scoreboard players set $item_pool.cluster_fireball match_components -1
scoreboard players set $item_pool.fireball match_components 1
scoreboard players set $item_pool.icbm match_components -1

scoreboard players set $cubekrowd/disable_shield_or_obsidian_shield match_components 1
scoreboard players set $cubekrowd/disable_all_but_5_non_lightning_missiles match_components 1
scoreboard players set $cubekrowd/disable_one_lightning_missile match_components 1
