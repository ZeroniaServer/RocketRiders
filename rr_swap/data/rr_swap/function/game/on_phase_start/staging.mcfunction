execute if predicate game:phase/staging/queue/countdown run scoreboard players set $facade_swap_cooldown match_data 600
execute if predicate game:phase/staging/queue/countdown run scoreboard players operation $facade_swap_cooldown match_data -= $queue_countdown_timer global
execute if predicate game:phase/staging/queue/countdown run scoreboard players operation $facade_swap_cooldown match_data /= $4 constant
execute if predicate game:phase/staging/queue/countdown if score $facade_swap_cooldown match_data matches ..10 run scoreboard players set $facade_swap_cooldown match_data 10
execute if predicate game:phase/staging/queue/countdown if score $facade_swap_cooldown match_data matches 60.. run scoreboard players set $facade_swap_cooldown match_data 60

scoreboard players set QuickSwap swapside 0
scoreboard players set SwapPlatformSec swapside 60
scoreboard players set SwapPlatformTick swapside 0
function rr_swap:items/tetrisreset
