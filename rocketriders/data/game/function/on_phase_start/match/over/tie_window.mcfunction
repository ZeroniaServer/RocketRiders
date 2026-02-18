## Gamemode-specific functions
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run function rr_duel:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=normalEnabled] run function rr_normal:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=pveEnabled] run function rr_pve:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/over/tie_window
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run function rr_swap:game/on_phase_start/match/over/tie_window

## Skip straight to outcome if there is no tie window
scoreboard players set $skip_tie_window var 1
execute if predicate game:phase/match/over/tie_window unless predicate game:game_rules/disable_tying/on if predicate game:yellow_portal_revealed if predicate game:blue_portal_revealed unless entity @s[tag=BothWon] run scoreboard players set $skip_tie_window var 0
execute if predicate game:phase/match/over/tie_window if score $skip_tie_window var matches 1 run function game:set_phase/match.over.outcome
