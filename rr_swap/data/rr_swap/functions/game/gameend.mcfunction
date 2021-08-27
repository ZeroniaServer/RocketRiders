function everytick:icbm
function rr_swap:items/cluster
clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying] run function game:endstats
scoreboard players set QuickSwap swapside 0
scoreboard players set SwapPlatformSec swapside 20
scoreboard players set SwapPlatformTick swapside 0
bossbar set rr_swap:swap_progress players none