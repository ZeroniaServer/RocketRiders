fill 175 -64 -175 187 180 -160 air strict
scoreboard players set $chunk_clear_progress global 100
scoreboard players reset #chunk_clear_inactive_ticks global
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["[arenaclear] Finished chunk clearing!"]}
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["[arenaclear] Finished arena clear!"]}
