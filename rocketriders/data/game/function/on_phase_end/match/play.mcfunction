##
gamemode adventure @a[x=0,predicate=custom:team/any_playing_team]

scoreboard objectives setdisplay list
scoreboard players reset @a flag_tablist_display

gamerule minecraft:fall_damage false
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/forget_canopy
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/forget_nova_attach
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/forget_spell_emitter

worldborder warning distance 0

## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_end/match/play
execute if entity @s[tag=classicEnabled] run function rr_classic:game/on_phase_end/match/play
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_end/match/play
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_end/match/play
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_end/match/play
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_end/match/play
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_end/match/play
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_end/match/play
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_end/match/play
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_end/match/play
