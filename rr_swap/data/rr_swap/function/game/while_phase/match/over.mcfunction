execute if score $match_over_timer global matches 1 as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory

scoreboard players set QuickSwap swapside 0
scoreboard players set SwapPlatformSec swapside 20
scoreboard players set SwapPlatformTick swapside 0
bossbar set rr_swap:swap_progress players none
