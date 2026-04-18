## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=classicEnabled] run function rr_classic:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/closing/tie_window
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_start/match/closing/tie_window

## Skip straight to outcome if there is no tie window
scoreboard players set $skip_tie_window var 1
execute if predicate game:phase/match/closing/tie_window unless predicate game:game_rules/disable_tying/on if predicate game:yellow_portal_revealed if predicate game:blue_portal_revealed unless entity @s[tag=BothWon] run scoreboard players set $skip_tie_window var 0
execute if predicate game:phase/match/closing/tie_window if score $skip_tie_window var matches 1 run function game:set_phase/match.closing.outcome.celebration
