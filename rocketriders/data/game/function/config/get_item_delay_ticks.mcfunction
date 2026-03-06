execute if predicate game:match_components/duel_settings_locked run return 300

execute if predicate game:match_components/no_item_timer run return 630720000

execute if score $config_override.item_delay match_components matches 5.. run scoreboard players operation $item_delay_ticks var = $config_override.item_delay match_components
execute if score $config_override.item_delay match_components matches 5.. run return run scoreboard players operation $item_delay_ticks var *= $ticks_per_second constant

execute if predicate game:modifiers/minute_mix/on run return 1200

execute unless score $item_delay config matches 5..30 run return 300
scoreboard players operation $item_delay_ticks var = $item_delay config
return run scoreboard players operation $item_delay_ticks var *= $ticks_per_second constant
