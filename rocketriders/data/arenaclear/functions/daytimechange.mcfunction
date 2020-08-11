##Utility function for changing daytime
#Initial scores and time addition
scoreboard players set 24000 daytime 24000
tag @s[scores={daytime=..-1}] add negativeDaytime
scoreboard players operation @s daytime %= 24000 daytime
execute as @s[scores={daytime=1..}] run function arenaclear:daytimeadd

#Fix moon phases by adding back time from day 0 (only when time is subtracted)
execute as @s[tag=negativeDaytime] store result score %previous daytime run time query daytime
execute as @s[tag=negativeDaytime] run time set 0d
execute store result score @s[tag=negativeDaytime] daytime run scoreboard players get %previous daytime
execute as @s[tag=negativeDaytime] run function arenaclear:daytimeadd

#Reset temporary scores/tags
tag @s[tag=negativeDaytime] remove negativeDaytime
scoreboard players reset * daytime