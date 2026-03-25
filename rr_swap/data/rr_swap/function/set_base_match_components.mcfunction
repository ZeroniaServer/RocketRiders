data modify storage rocketriders:match components."armor_type" set value "swap_mode"
data modify storage rocketriders:match components."main_item" set value "shooting_saber"
function rr_swap:baseswap/set_palettes

scoreboard players set $config_override.special_treatment match_components -1
scoreboard players set $config_override.splash_streams match_components -1
scoreboard players set $config_override.surprise_eggs match_components -1
scoreboard players set $item_signs/replace_fireball_with_cluster_fireball match_components 1
scoreboard players set $item_signs/replace_vortex_with_icbm match_components 1

# items
scoreboard players set $config_override.disable_item_category/heavy_missiles match_components -1
scoreboard players set $item_pool.missile/auxiliary match_components 1
scoreboard players set $item_pool.missile/juggerbuster match_components -1
scoreboard players set $item_pool.missile/rifter match_components -1
scoreboard players set $item_pool.missile/warhead match_components 1

scoreboard players set $config_override.disable_item_category/lightning_missiles match_components -1
scoreboard players set $item_pool.missile/hurricane match_components 1
scoreboard players set $item_pool.missile/thunderbolt match_components 1

scoreboard players set $item_pool.missile/ant match_components -1
scoreboard players set $item_pool.missile/blade match_components -1
scoreboard players set $item_pool.missile/catapult match_components -1
scoreboard players set $item_pool.missile/chronullifier match_components -1
scoreboard players set $item_pool.missile/citadel match_components -1
scoreboard players set $item_pool.missile/elder_guardian match_components -1
scoreboard players set $item_pool.missile/gemini match_components -1
scoreboard players set $item_pool.missile/lifter match_components -1
scoreboard players set $item_pool.missile/slasher match_components -1
scoreboard players set $item_pool.missile/tomatwo match_components -1

scoreboard players set $config_override.disable_item_category/utilities match_components -1
scoreboard players set $item_pool.arrow match_components 1
scoreboard players set $item_pool.canopy match_components -1
scoreboard players set $item_pool.cluster_fireball match_components 1
scoreboard players set $item_pool.fireball match_components -1
scoreboard players set $item_pool.icbm match_components 1
scoreboard players set $item_pool.nova_rocket match_components -1
scoreboard players set $item_pool.obsidian_shield match_components 1
scoreboard players set $item_pool.shield match_components 1
scoreboard players set $item_pool.splash match_components -1
scoreboard players set $item_pool.vortex match_components -1
