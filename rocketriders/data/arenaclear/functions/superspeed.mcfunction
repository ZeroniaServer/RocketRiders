#############################################################
## SUPERSPEED: The core component of the SmartClear system ##
## A recursive function that sweeps through all the blocks ##
## traveled by missiles/other items to clear out the arena ##
## in a time/performance-efficient manner (just one tick!) ##
#############################################################

##During recursion - Arena Clear in progress
kill @e[type=marker,tag=PowerClearAEC]
kill @e[type=marker,tag=PowerClearChecker]
scoreboard players add @e[type=marker,tag=ArenaClearChecker] ClearArena 1
execute as @e[type=marker,tag=ArenaClearBlue,scores={ClearArena=1}] at @s run fill ~4 ~ ~-12 ~-4 ~12 ~ air replace #custom:missileblocks
execute as @e[type=marker,tag=ArenaClearYellow,scores={ClearArena=1}] at @s run fill ~4 ~ ~12 ~-4 ~12 ~ air replace #custom:missileblocks
execute as @e[type=marker,tag=ArenaClearBlue] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:missileblocks
execute as @e[type=marker,tag=ArenaClearYellow] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:missileblocks
execute as @e[type=marker,tag=ArenaClearBlue] at @s run tp @s ~ ~ ~4
execute as @e[type=marker,tag=ArenaClearYellow] at @s run tp @s ~ ~ ~-4
scoreboard players add @e[type=marker,tag=ArenaClearYellow,predicate=!custom:insideborder] ClearArena 1
scoreboard players add @e[type=marker,tag=ArenaClearBlue,predicate=!custom:insideborder] ClearArena 1
kill @e[type=marker,tag=ArenaClearYellow,scores={ClearArena=7..}]
kill @e[type=marker,tag=ArenaClearBlue,scores={ClearArena=7..}]
execute as @e[type=area_effect_cloud,tag=SmartClearAECsplash] at @s run fill ~-20 ~6 ~-20 ~20 ~-6 ~20 air replace #custom:splashblocks
execute as @e[type=area_effect_cloud,tag=SmartClearAECsplash] at @s run tp @s ~ ~-2 ~

execute if entity @e[type=marker,tag=ArenaClearChecker,scores={ClearArena=..89}] run tag @s remove Countdown
execute if entity @e[type=marker,tag=ArenaClearChecker,scores={ClearArena=..89}] run function arenaclear:superspeed

##After recursion - complete Arena Clear
tag @e[type=marker,tag=ArenaClearChecker,scores={ClearArena=90..}] add PlacerClear
execute if entity @e[type=marker,tag=PlacerClear] run fill -2 216 -30 0 216 -30 air
execute if entity @e[type=marker,tag=PlacerClear] run kill @e[type=marker,tag=ArenaClearYellow]
execute if entity @e[type=marker,tag=PlacerClear] run kill @e[type=marker,tag=ArenaClearBlue]
execute if entity @e[type=marker,tag=PlacerClear] run kill @e[type=area_effect_cloud,tag=SmartClearAECsplash]
execute if entity @e[type=marker,tag=PlacerClear] run kill @e[type=marker,tag=checked]
execute if entity @e[type=marker,tag=PlacerClear] run kill @e[type=marker,tag=checking]