#############################################################
## SUPERSPEED: The core component of the SmartClear system ##
## A recursive function that sweeps through all the blocks ##
## traveled by missiles/other items to clear out the arena ##
## in a time/performance-efficient manner (just one tick!) ##
#############################################################

##During recursion - Arena Clear in progress
scoreboard players add @e[x=0,type=marker,tag=ArenaClearChecker] ClearArena 1
execute as @e[x=0,type=area_effect_cloud,tag=SmartClearAECsplash] at @s run fill ~-20 ~6 ~-20 ~20 ~-6 ~20 air replace #custom:splashblocks
execute as @e[x=0,type=area_effect_cloud,tag=SmartClearAECsplash] at @s run tp @s ~ ~-2 ~

execute if entity @e[x=0,type=marker,tag=ArenaClearChecker,scores={ClearArena=..89}] run tag @s remove Countdown
execute if entity @e[x=0,type=marker,tag=ArenaClearChecker,scores={ClearArena=..89}] run function arenaclear:superspeed

##After recursion - complete Arena Clear
tag @e[x=0,type=marker,tag=ArenaClearChecker,scores={ClearArena=90..}] add PlacerClear
execute if entity @e[x=0,type=marker,tag=PlacerClear] run fill -2 216 -30 0 216 -30 air
execute if entity @e[x=0,type=marker,tag=PlacerClear] run kill @e[x=0,type=area_effect_cloud,tag=SmartClearAECsplash]
execute if entity @e[x=0,type=marker,tag=PlacerClear] run kill @e[x=0,type=marker,tag=checked]
execute if entity @e[x=0,type=marker,tag=PlacerClear] run kill @e[x=0,type=marker,tag=checking]