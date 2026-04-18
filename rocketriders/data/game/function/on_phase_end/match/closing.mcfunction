##
scoreboard players reset $closing_timer global
scoreboard players reset $closing_timer.max_tie_window_time global
scoreboard players reset $closing_timer.max_time_before_review global
scoreboard players reset $closing_timer.max_review_time global

gamemode adventure @a[x=0,predicate=custom:team/any_playing_team]

effect clear @a[x=0,predicate=custom:team/any_playing_team] resistance
effect clear @a[x=0,predicate=custom:team/any_playing_team] weakness
effect clear @a[x=0,predicate=custom:team/any_playing_team] regeneration
execute as @a[x=0] run attribute @s minecraft:block_interaction_range modifier remove rocketriders:closing_phase

execute as @e[x=0,type=#custom:large_fireballs] run function game:set_fireball_punchable

## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_end/match/closing
execute if entity @s[tag=classicEnabled] run function rr_classic:game/on_phase_end/match/closing
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_end/match/closing
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_end/match/closing
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_end/match/closing
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_end/match/closing
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_end/match/closing
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_end/match/closing
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_end/match/closing
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_end/match/closing
