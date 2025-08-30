function everytick:cluster
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] #custom:clear
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] crossbow[custom_data~{id:"nova_rocket"}]
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats

scoreboard players set QuickSwap swapside 0
scoreboard players set SwapPlatformSec swapside 20
scoreboard players set SwapPlatformTick swapside 0
bossbar set rr_swap:swap_progress players none

#Preclear
execute if entity @s[scores={endtimer=569..}] run function rr_swap:arenaclear/preclear