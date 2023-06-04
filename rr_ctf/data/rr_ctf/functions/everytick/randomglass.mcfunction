summon marker ~ ~ ~ {Tags:["RandomGlass"]}
scoreboard players set @e[x=0,type=marker,tag=RandomGlass,limit=1] RNGmax 16
execute as @e[x=0,type=marker,tag=RandomGlass,limit=1] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[x=0,type=marker,tag=RandomGlass,limit=1] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=0},limit=1] run setblock ~ ~ ~ red_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=1},limit=1] run setblock ~ ~ ~ orange_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=2},limit=1] run setblock ~ ~ ~ yellow_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=3},limit=1] run setblock ~ ~ ~ lime_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=4},limit=1] run setblock ~ ~ ~ green_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=5},limit=1] run setblock ~ ~ ~ cyan_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=6},limit=1] run setblock ~ ~ ~ light_blue_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=7},limit=1] run setblock ~ ~ ~ blue_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=8},limit=1] run setblock ~ ~ ~ magenta_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=9},limit=1] run setblock ~ ~ ~ purple_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=10},limit=1] run setblock ~ ~ ~ pink_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=11},limit=1] run setblock ~ ~ ~ white_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=12},limit=1] run setblock ~ ~ ~ light_gray_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=13},limit=1] run setblock ~ ~ ~ gray_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=14},limit=1] run setblock ~ ~ ~ black_stained_glass
execute as @e[x=0,type=marker,tag=RandomGlass,scores={RNGscore=15},limit=1] run setblock ~ ~ ~ brown_stained_glass

kill @e[x=0,type=marker,tag=RandomGlass,limit=1]