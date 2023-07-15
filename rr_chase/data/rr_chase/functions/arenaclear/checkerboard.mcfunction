scoreboard players add @s ChaseAlarm 1
scoreboard players add @s CmdData 1
execute if entity @s[tag=ChaseChecker1,scores={ChaseAlarm=1}] run fill ~ ~-6 ~4 ~-6 ~ ~ minecraft:white_stained_glass replace glass
execute if entity @s[tag=ChaseChecker2,scores={ChaseAlarm=1}] run fill ~ ~-6 ~4 ~-6 ~ ~ minecraft:black_stained_glass replace glass
execute if entity @s[tag=ChaseChecker3,scores={ChaseAlarm=1}] run fill ~ ~-1 ~4 ~-6 ~ ~ minecraft:white_stained_glass replace glass

execute if entity @s[tag=ChaseChecker1,scores={ChaseAlarm=2}] run fill ~ ~-6 ~4 ~-6 ~ ~ minecraft:black_stained_glass replace glass
execute if entity @s[tag=ChaseChecker2,scores={ChaseAlarm=2}] run fill ~ ~-6 ~4 ~-6 ~ ~ minecraft:white_stained_glass replace glass
execute if entity @s[tag=ChaseChecker3,scores={ChaseAlarm=2}] run fill ~ ~-1 ~4 ~-6 ~ ~ minecraft:black_stained_glass replace glass

execute as @s at @s run tp @s ~-7 ~ ~
execute if entity @s[scores={ChaseAlarm=2..}] run scoreboard players reset @s ChaseAlarm

execute unless entity @s[scores={CmdData=7..}] as @s at @s run function rr_chase:arenaclear/checkerboard
execute if entity @s[scores={CmdData=7..}] run kill @s