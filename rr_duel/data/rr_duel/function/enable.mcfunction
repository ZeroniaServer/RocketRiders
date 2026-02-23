tag @s remove switchGamemodes
tag @s add duelEnabled

scoreboard players reset * gamemode_components
scoreboard players set $arena/no_base_details gamemode_components 1
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.disable_pierce_prevention gamemode_components -1
scoreboard players set $config_override.disable_tying gamemode_components 1
scoreboard players set $config_override.item_delay gamemode_components 15
scoreboard players set $config_override.wind_down gamemode_components 1
scoreboard players set $custom_leave_handling gamemode_components 1
scoreboard players set $duel_settings_locked gamemode_components 1
scoreboard players set $lock_playing_teams_during_match gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1
scoreboard players set $max_players_per_team gamemode_components 1
scoreboard players set $min_players_per_team gamemode_components 1
scoreboard players set $no_feathered_vortices gamemode_components 1

# items
scoreboard players set $item_pool.cluster_fireball gamemode_components -1
scoreboard players set $item_pool.icbm gamemode_components -1

#scoreboard players set $cubekrowd/disable_shield_or_obsidian_shield gamemode_components 1
#scoreboard players set $cubekrowd/disable_nova_rocket_or_fireball gamemode_components 1
#scoreboard players set $cubekrowd/disable_all_but_5_non_lightning_missiles gamemode_components 1
#scoreboard players set $cubekrowd/disable_one_lightning_missile gamemode_components 1
# (handled differently)
