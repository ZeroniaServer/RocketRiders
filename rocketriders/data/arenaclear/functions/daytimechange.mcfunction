scoreboard players set 24000 daytime 24000
#necessary for negative values
scoreboard players operation @s daytime %= 24000 daytime

execute as @s[scores={daytime=1..}] run function arenaclear:daytimeadd