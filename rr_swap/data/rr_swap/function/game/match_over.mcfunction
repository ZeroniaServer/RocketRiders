function everytick:cluster
execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute unless predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=101},tag=!BothWon] run function game:endstats
execute if predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=1},tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats

scoreboard players set QuickSwap swapside 0
scoreboard players set SwapPlatformSec swapside 20
scoreboard players set SwapPlatformTick swapside 0
bossbar set rr_swap:swap_progress players none
