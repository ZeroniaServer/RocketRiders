execute if predicate game:gamemode_components/duel_settings_locked run return 15

execute if predicate game:gamemode_components/no_item_timer run return 31536000

execute if score $config_override.item_delay gamemode_components matches 5.. run return run scoreboard players get $config_override.item_delay gamemode_components

execute if predicate game:modifiers/minute_mix/on run return 60

execute unless score $item_delay config matches 5..30 run return 15
return run scoreboard players get $item_delay config
