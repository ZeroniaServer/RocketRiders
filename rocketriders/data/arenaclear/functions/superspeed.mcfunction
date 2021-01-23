#############################################################
## SUPERSPEED: The core component of the SmartClear system ##
## A recursive function that sweeps through all the blocks ##
## traveled by missiles/other items to clear out the arena ##
## in a time/performance-efficient manner (just one tick!) ##
#############################################################

##During recursion - Arena Clear in progress
scoreboard players add @e[tag=ArenaClearChecker,type=area_effect_cloud] ClearArena 1
execute as @e[tag=ArenaClearBlue,type=area_effect_cloud] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:missileblocks
execute as @e[tag=ArenaClearYellow,type=area_effect_cloud] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:missileblocks
execute as @e[tag=ArenaClearBlue,type=area_effect_cloud] at @s run tp @s ~ ~ ~4
execute as @e[tag=ArenaClearYellow,type=area_effect_cloud] at @s run tp @s ~ ~ ~-4
execute as @e[tag=SmartClearAECsplash,type=area_effect_cloud] at @s run fill ~-12 ~4 ~-12 ~12 ~-4 ~12 air replace #custom:splashblocks
execute as @e[tag=SmartClearAECsplash,type=area_effect_cloud] at @s run tp @s ~ ~-4 ~
execute if entity @e[tag=ArenaClearChecker,scores={ClearArena=..89},type=area_effect_cloud] run tag @s remove Countdown
execute if entity @e[tag=ArenaClearChecker,scores={ClearArena=..89},type=area_effect_cloud] run function arenaclear:superspeed

##After recursion - complete Arena Clear
tag @e[tag=ArenaClearChecker,scores={ClearArena=90..},type=area_effect_cloud] add PlacerClear
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run fill -2 216 -30 0 216 -30 air
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run kill @e[tag=SmartClearAECyellow,type=area_effect_cloud]
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run kill @e[tag=SmartClearAECblue,type=area_effect_cloud]
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run kill @e[tag=ArenaClearYellow,type=area_effect_cloud]
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run kill @e[tag=ArenaClearBlue,type=area_effect_cloud]
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run kill @e[tag=SmartClearAECsplash,type=area_effect_cloud]