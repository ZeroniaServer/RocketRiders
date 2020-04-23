scoreboard players add @e[tag=ArenaClearChecker] ClearArena 1
execute as @e[tag=ArenaClearBlue] at @s run fill ~3 ~-1 ~-2 ~-3 ~8 ~ air replace #custom:missileblocks
execute as @e[tag=ArenaClearBlue,tag=ArenaClearCata] at @s run fill ~3 ~8 ~-2 ~-3 ~12 ~ air replace #custom:missileblocks
execute as @e[tag=ArenaClearYellow] at @s run fill ~3 ~-1 ~-2 ~-3 ~8 ~ air replace #custom:missileblocks
execute as @e[tag=ArenaClearYellow,tag=ArenaClearCata] at @s run fill ~3 ~8 ~-2 ~-3 ~12 ~ air replace #custom:missileblocks
execute as @e[tag=ArenaClearBlue] at @s run tp @s ~ ~ ~1
execute as @e[tag=ArenaClearYellow] at @s run tp @s ~ ~ ~-1
execute as @e[tag=SmartClearAECsplash] at @s run fill ~-12 ~ ~-12 ~12 ~ ~12 air replace #custom:splashblocks
execute as @e[tag=SmartClearAECsplash] at @s run tp @s ~ ~-1 ~
execute if entity @e[tag=ArenaClearChecker,scores={ClearArena=..349}] run tag @e[tag=Selection] remove Countdown
execute if entity @e[tag=ArenaClearChecker,scores={ClearArena=..349}] run function arenaclear:superspeed

tag @e[tag=ArenaClearChecker,scores={ClearArena=350..}] add PlacerClear
execute if entity @e[tag=PlacerClear] run fill -2 216 -30 0 216 -30 air
execute if entity @e[tag=PlacerClear] run kill @e[tag=SmartClearAECyellow]
execute if entity @e[tag=PlacerClear] run kill @e[tag=SmartClearAECblue]
execute if entity @e[tag=PlacerClear] run kill @e[tag=ArenaClearYellow]
execute if entity @e[tag=PlacerClear] run kill @e[tag=ArenaClearBlue]
execute if entity @e[tag=PlacerClear] run kill @e[tag=SmartClearAECsplash]