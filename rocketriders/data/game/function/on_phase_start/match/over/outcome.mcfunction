##


## Gamemode-specific functions
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run function rr_duel:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=normalEnabled] run function rr_normal:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=pveEnabled] run function rr_pve:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/over/outcome
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run function rr_swap:game/on_phase_start/match/over/outcome
