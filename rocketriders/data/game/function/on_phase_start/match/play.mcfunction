##
tag @s remove BlueWon
tag @s remove YellowWon
tag @s remove BothWon

execute unless predicate game:modifiers/no_fall_damage/on run function custom:game_rules/fall_damage/on
execute if predicate game:modifiers/no_fall_damage/on run function custom:game_rules/fall_damage/off

execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_all_canopies
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_nova_attach
tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0

gamemode survival @a[x=0,predicate=custom:team/any_playing_team]

clear @a[x=0,predicate=custom:team/any_arena_team] *
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory

## Gamemode-specific functions
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run function rr_duel:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=normalEnabled] run function rr_normal:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=pveEnabled] run function rr_pve:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/play
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run function rr_swap:game/on_phase_start/match/play
