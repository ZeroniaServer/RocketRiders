##
scoreboard players set $tie_breaker_timer global 0

# Remove explosives
kill @e[x=0,type=tnt]
execute if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
kill @e[x=0,type=tnt_minecart]
kill @e[x=0,type=creeper]

# Place back portals
execute if predicate game:blue_portal_revealed run function game:place_portal/blue
execute if predicate game:yellow_portal_revealed run function game:place_portal/yellow

# Grant Premature Celebration achievement
tag @a[x=0] remove Winner
tag @a[x=0] remove Loser
execute if predicate game:achievements_can_be_awarded if entity @s[tag=BlueWonFirst] run advancement grant @a[x=0,predicate=custom:team/blue] only achievements:rr_challenges/premature
execute if entity @s[tag=BlueWonFirst] as @a[x=0,predicate=custom:team/blue] run function custom:player/update_armor
tag @s remove BlueWonFirst
execute if predicate game:achievements_can_be_awarded if entity @s[tag=YellowWonFirst] run advancement grant @a[x=0,predicate=custom:team/yellow] only achievements:rr_challenges/premature
execute if entity @s[tag=YellowWonFirst] as @a[x=0,predicate=custom:team/yellow] run function custom:player/update_armor
tag @s remove YellowWonFirst

# Revert the celebration
function achievements:scoresreset
worldborder warning distance 1000000
stopsound @a[x=0] master minecraft:ui.toast.challenge_complete
stopsound @a[x=0] master minecraft:entity.wither.spawn
title @a[x=0,predicate=custom:team/any_playing_team] actionbar [""]
tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0

#Halves the Item Delay (more intense gameplay)
scoreboard players operation @s[scores={MaxItemTime=3..}] MaxItemTime /= $2 constant
scoreboard players set @s[scores={MaxItemTime=..1}] MaxItemTime 2
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
execute if predicate game:modifiers/minute_mix/on run scoreboard players set @s RandomItem 1197


## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=classicEnabled] run function rr_classic:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/match/play/tie_breaker
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_start/match/play/tie_breaker
