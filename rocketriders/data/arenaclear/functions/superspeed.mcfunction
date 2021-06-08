#############################################################
## SUPERSPEED: The core component of the SmartClear system ##
## A recursive function that sweeps through all the blocks ##
## traveled by missiles/other items to clear out the arena ##
## in a time/performance-efficient manner (just one tick!) ##
#############################################################

##During recursion - Arena Clear in progress
scoreboard players add @e[tag=ArenaClearChecker,type=marker] ClearArena 1
execute as @e[tag=ArenaClearBlue,type=marker] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:missileblocks
execute as @e[tag=ArenaClearYellow,type=marker] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:missileblocks
execute as @e[tag=ArenaClearBlue,type=marker] at @s run tp @s ~ ~ ~4
execute as @e[tag=ArenaClearYellow,type=marker] at @s run tp @s ~ ~ ~-4
execute as @e[tag=SmartClearAECsplash,type=area_effect_cloud] at @s run fill ~-20 ~6 ~-20 ~20 ~-6 ~20 air replace #custom:splashblocks
execute as @e[tag=SmartClearAECsplash,type=area_effect_cloud] at @s run tp @s ~ ~-2 ~

execute if entity @e[tag=ArenaClearChecker,scores={ClearArena=..89},type=marker] run tag @s remove Countdown
execute if entity @e[tag=ArenaClearChecker,scores={ClearArena=..89},type=marker] run function arenaclear:superspeed

##After recursion - complete Arena Clear
tag @e[tag=ArenaClearChecker,scores={ClearArena=90..},type=marker] add PlacerClear
execute if entity @e[tag=PlacerClear,type=marker] run fill -2 216 -30 0 216 -30 air
execute if entity @e[tag=PlacerClear,type=marker] run kill @e[tag=SmartClearAECyellow,type=marker]
execute if entity @e[tag=PlacerClear,type=marker] run kill @e[tag=SmartClearAECblue,type=marker]
execute if entity @e[tag=PlacerClear,type=marker] run kill @e[tag=ArenaClearYellow,type=marker]
execute if entity @e[tag=PlacerClear,type=marker] run kill @e[tag=ArenaClearBlue,type=marker]
execute if entity @e[tag=PlacerClear,type=marker] run kill @e[tag=SmartClearAECsplash,type=area_effect_cloud]