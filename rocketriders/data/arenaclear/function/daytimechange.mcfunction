##Preparation function for changing daytime
##Begins from time 0 and adds previous time + new difference

execute store result score %previous daytime run time query daytime
time set 0d
scoreboard players operation @s daytime += %previous daytime
#Modulo clamps resultant daytime to between 0-24000 ticks
scoreboard players operation @s daytime %= $24000 constant
execute if score @s daytime matches 1.. run function arenaclear:daytimeadd
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns