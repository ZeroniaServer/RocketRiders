execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["Phase Started: match.closing"]}

##
scoreboard players set $closing_sequence.time match_data 0

# Set timings
execute store result score $closing_sequence.max_tie_window_time match_data run function game:config/get_tie_window_length_ticks
execute unless predicate game:match_components/short_end_sequence run scoreboard players set $closing_sequence.max_time_before_review match_data 250
execute if predicate game:match_components/short_end_sequence run scoreboard players set $closing_sequence.max_time_before_review match_data 0
execute if score $closing_sequence.max_tie_window_time match_data > $closing_sequence.max_time_before_review match_data run scoreboard players operation $closing_sequence.max_time_before_review match_data = $closing_sequence.max_tie_window_time match_data
scoreboard players set $closing_sequence.max_review_time match_data 320

# Put players into adventure mode
gamemode adventure @a[x=0,predicate=custom:team/any_playing_team]

# Prevent fireballs from being punched
execute as @e[x=0,type=#custom:large_fireballs,predicate=custom:in_arena] at @s run function game:set_fireball_not_punchable

# Kill canopy projectiles
kill @e[x=0,predicate=entities:type/canopy_projectile]

# Reset items and effects
tag @s remove gaveFirstItem
clear @a[x=0,predicate=custom:team/any_arena_team] *
scoreboard players reset @a[x=0] effects.infinity_saber.time
scoreboard players reset @a[x=0] effects.multishot_saber.time
scoreboard players reset @a[x=0] effects.elytra.state
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/update_armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/reset_inventory
effect clear @a[x=0,predicate=custom:team/any_playing_team]
execute if predicate game:outcome/blue_won_only run effect give @a[x=0,predicate=custom:team/yellow] weakness infinite 100 true
execute if predicate game:outcome/yellow_won_only run effect give @a[x=0,predicate=custom:team/blue] weakness infinite 100 true
effect give @a[x=0,predicate=custom:team/any_playing_team] resistance infinite 100 true
effect give @a[x=0,predicate=custom:team/any_playing_team] instant_health 1 100 true

execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/teleport_to_start

## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/closing
execute if entity @s[tag=classicEnabled] run function rr_classic:game/on_phase_start/match/closing
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/closing
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/closing
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_start/match/closing
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_start/match/closing
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/closing
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_start/match/closing
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/closing
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_start/match/closing
