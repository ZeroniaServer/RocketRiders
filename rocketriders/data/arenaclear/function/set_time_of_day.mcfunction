tag @s add time_of_day.this
execute if score @s set_time_of_day matches 0..23999 positioned -68.88 192.5 73.5 if entity @s[distance=..10] at @s run playsound ui.button.click master @a[x=0,tag=!time_of_day.this] ~ ~ ~ 1 1
execute if score @s set_time_of_day matches 24000.. positioned -68.88 192.5 73.5 if entity @s[distance=..10] at @s run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1
tag @s remove time_of_day.this

# Modulo clamps the time value to between 0-23999 ticks
execute store result storage rocketriders:main time_of_day.daytime int 1 run scoreboard players operation @s set_time_of_day %= $24000 constant
function arenaclear:time_of_day/set_time with storage rocketriders:main time_of_day
data remove storage rocketriders:main time_of_day

execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
