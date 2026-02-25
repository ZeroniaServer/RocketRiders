##
gamemode adventure @a[x=0,predicate=custom:team/any_playing_team]

# Prevent fireballs from being punched
execute as @e[x=0,type=#custom:large_fireballs,predicate=custom:in_arena] at @s run function game:set_fireball_not_punchable

clear @a[x=0,predicate=custom:team/any_arena_team] *
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory

## Gamemode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/closing
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/closing
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/closing
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_start/match/closing
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_start/match/closing
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/closing
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_start/match/closing
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/closing
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_start/match/closing
