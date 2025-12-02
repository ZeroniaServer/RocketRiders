scoreboard players reset * gamemode_components
scoreboard players set $arena/no_base_details gamemode_components 1
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.disable_tying gamemode_components 1
scoreboard players set $config_override.item_delay gamemode_components 15
scoreboard players set $config_override.wind_down gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1
scoreboard players set $no_feathered_vortices gamemode_components 1
scoreboard players set $duel_settings_locked gamemode_components 1

tag @s remove switchGamemodes

function gamemodes:storesettings
tag @s add customBossbar
tag @s add duelEnabled
tag @s add customLeaveHandling

# items
scoreboard players set $item_pool.cluster_fireball gamemode_components -1
scoreboard players set $item_pool.icbm gamemode_components -1
