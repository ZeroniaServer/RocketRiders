data modify storage rocketriders:match components."main_item" set value "shooting_saber"

# items
scoreboard players set $item_pool.cluster_fireball match_components -1
scoreboard players set $item_pool.icbm match_components -1

scoreboard players set $cubekrowd/disable_shield_or_obsidian_shield match_components 1
scoreboard players set $cubekrowd/disable_nova_rocket_or_fireball match_components 1
scoreboard players set $cubekrowd/disable_all_but_5_non_lightning_missiles match_components 1
scoreboard players set $cubekrowd/disable_one_lightning_missile match_components 1
