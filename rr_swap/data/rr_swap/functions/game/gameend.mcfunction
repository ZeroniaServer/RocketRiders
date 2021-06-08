clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
execute as @s[scores={endtimer=81},tag=doTying,tag=!tyingOff] run function game:endstats
execute as @s[scores={endtimer=1},tag=!doTying] run function game:endstats
scoreboard players set QuickSwap swapside 0
scoreboard players set SwapPlatformSec swapside 20
scoreboard players set SwapPlatformTick swapside 0
tag @s add swapLast
bossbar set rr_swap:swap_progress players none
kill @e[tag=ICBM,type=egg]
kill @e[tag=ICBMtracker,type=marker]
kill @e[type=chicken]
scoreboard players reset $highest ICBMID
scoreboard players reset $tptracker ICBMID
scoreboard players reset $numeggs ICBMID