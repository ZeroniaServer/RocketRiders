summon area_effect_cloud ~ ~ ~ {Tags:["RandomGlass"],Duration:1}
scoreboard players set @e[tag=RandomGlass,type=area_effect_cloud,limit=1] RNGmax 16
execute as @e[tag=RandomGlass,type=area_effect_cloud,limit=1] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomGlass,type=area_effect_cloud,limit=1] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[tag=RandomGlass,scores={RNGscore=0},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ red_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=1},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ orange_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=2},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ yellow_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=3},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ lime_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=4},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ green_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=5},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ cyan_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=6},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ light_blue_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=7},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ blue_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=8},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ magenta_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=9},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ purple_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=10},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ pink_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=11},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ white_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=12},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ light_gray_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=13},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ gray_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=14},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ black_stained_glass
execute as @e[tag=RandomGlass,scores={RNGscore=15},type=area_effect_cloud,limit=1] run setblock ~ ~ ~ brown_stained_glass

kill @e[tag=RandomGlass,type=area_effect_cloud,limit=1]