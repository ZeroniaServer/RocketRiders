data modify storage rocketriders:match components."main_item" set value "shooting_saber"

scoreboard players set $arena/no_base_details match_components 1
scoreboard players set $arena/no_portal_details match_components 1
scoreboard players set $config_override.disable_pierce_prevention match_components -1
scoreboard players set $config_override.disable_tying match_components 1
scoreboard players set $config_override.item_delay match_components 15
scoreboard players set $config_override.wind_down match_components 1
scoreboard players set $custom_leave_handling match_components 1
scoreboard players set $duel_settings_locked match_components 1
scoreboard players set $lock_playing_teams_during_match match_components 1
scoreboard players set $max_players_per_team match_components 1
scoreboard players set $no_feathered_vortices match_components 1

# items
scoreboard players set $item_pool.cluster_fireball match_components -1
scoreboard players set $item_pool.icbm match_components -1

#scoreboard players set $cubekrowd/disable_shield_or_obsidian_shield match_components 1
#scoreboard players set $cubekrowd/disable_nova_rocket_or_fireball match_components 1
#scoreboard players set $cubekrowd/disable_all_but_5_non_lightning_missiles match_components 1
#scoreboard players set $cubekrowd/disable_one_lightning_missile match_components 1
# (handled differently)
