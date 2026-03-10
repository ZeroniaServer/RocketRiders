##
scoreboard players set $queue_countdown_timer global 0

bossbar set rr:startgame max 30
bossbar set rr:startgame color green

## Game-mode-specific functions
execute if entity @s[tag=chaseEnabled] run function rr_chase:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=crusadeEnabled] run function rr_crusade:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=ctfEnabled] run function rr_ctf:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=duelEnabled] run function rr_duel:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=normalEnabled] run function rr_normal:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=powerupsEnabled] run function rr_powerups:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=pveEnabled] run function rr_pve:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=sandboxEnabled] run function rr_sandbox:game/on_phase_start/staging/queue/countdown
execute if entity @s[tag=swapEnabled] run function rr_swap:game/on_phase_start/staging/queue/countdown
