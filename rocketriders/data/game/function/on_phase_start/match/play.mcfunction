##
gamemode survival @a[x=0,predicate=custom:team/any_playing_team]

tag @s remove BlueWon
tag @s remove YellowWon
tag @s remove BothWon

execute if predicate game:modifiers/no_fall_damage/on run function custom:game_rules/fall_damage/off

execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_canopy
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_nova_attach
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_spell_emitter
tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0

clear @a[x=0,predicate=custom:team/any_arena_team] *
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory

scoreboard players reset @a flag_tablist_display
scoreboard objectives setdisplay list flag_tablist_display

## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/play
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/play
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/play
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_start/match/play
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_start/match/play
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/play
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_start/match/play
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/play
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_start/match/play
