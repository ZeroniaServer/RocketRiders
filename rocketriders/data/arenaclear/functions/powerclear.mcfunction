#############################################################
## POWERCLEAR: The core component of the SmartClear system ##
## A recursive function that sweeps through all the blocks ##
## traveled by missiles/other items to clear out the arena ##
## in a time/performance-efficient manner (just one tick!) ##
#############################################################

execute unless entity @e[tag=PowerClearBlue] unless entity @e[tag=PowerClearYellow] run scoreboard players set @e[tag=PowerClearChecker] ClearArena 91

##During recursion - Arena Clear in progress
scoreboard players add @e[type=marker,tag=PowerClearChecker] ClearArena 1
execute as @e[type=marker,tag=PowerClearBlue,scores={ClearArena=1}] at @s run fill ~4 ~ ~-12 ~-4 ~12 ~ air replace #custom:powersource
execute as @e[type=marker,tag=PowerClearYellow,scores={ClearArena=1}] at @s run fill ~4 ~ ~12 ~-4 ~12 ~ air replace #custom:powersource
execute as @e[type=marker,tag=PowerClearBlue] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:powersource
execute as @e[type=marker,tag=PowerClearYellow] at @s run fill ~4 ~ ~-4 ~-4 ~12 ~4 air replace #custom:powersource
execute as @e[type=marker,tag=PowerClearBlue] at @s run tp @s ~ ~ ~4
execute as @e[type=marker,tag=PowerClearYellow] at @s run tp @s ~ ~ ~-4
scoreboard players add @e[type=marker,tag=PowerClearYellow,predicate=!custom:insideborder] ClearArena 1
scoreboard players add @e[type=marker,tag=PowerClearBlue,predicate=!custom:insideborder] ClearArena 1
kill @e[type=marker,tag=PowerClearYellow,scores={ClearArena=7..}]
kill @e[type=marker,tag=PowerClearBlue,scores={ClearArena=7..}]

execute if entity @e[type=marker,tag=PowerClearChecker,scores={ClearArena=..89}] run function arenaclear:powerclear

##After recursion - complete Power Clear
tag @e[type=marker,tag=PowerClearChecker,scores={ClearArena=90..}] add PlacerPowerClear
execute if entity @e[type=marker,tag=PlacerPowerClear] run tag @e[tag=checked] add powerchecked
execute if entity @e[type=marker,tag=PlacerPowerClear] run fill -2 216 -30 0 216 -30 air
execute if entity @e[type=marker,tag=PlacerPowerClear] run kill @e[type=marker,tag=PowerClearYellow]
execute if entity @e[type=marker,tag=PlacerPowerClear] run kill @e[type=marker,tag=PowerClearBlue]
execute if entity @e[type=marker,tag=PlacerPowerClear] run kill @e[tag=PowerClearAEC]
execute if entity @e[type=marker,tag=PlacerPowerClear] run kill @e[tag=PowerClearChecker]
execute if entity @e[type=marker,tag=PlacerPowerClear] run kill @e[tag=PlacerPowerClear]