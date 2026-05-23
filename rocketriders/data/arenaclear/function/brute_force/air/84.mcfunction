fill -65 -64 -1 -48 180 16 air strict
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["[arenaclear] Cleared central playing area. A match may start."]}
scoreboard players set $chunk_clear_progress global 50
scoreboard players reset #chunk_clear_inactive_ticks global
