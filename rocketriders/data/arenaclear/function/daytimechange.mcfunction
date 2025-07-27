tag @s add daytime.this
execute if score @s daytime matches 0..23999 positioned -68.88 192.5 73.5 if entity @s[distance=..10] at @s run playsound ui.button.click master @a[x=0,tag=!daytime.this] ~ ~ ~ 1 1
execute if score @s daytime matches 24000.. positioned -68.88 192.5 73.5 if entity @s[distance=..10] at @s run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1
tag @s remove daytime.this

# Modulo clamps the time value to between 0-23999 ticks
execute store result storage rocketriders:main daytime.daytime int 1 run scoreboard players operation @s daytime %= $24000 constant
function arenaclear:daytime/set_time with storage rocketriders:main daytime
data remove storage rocketriders:main daytime

execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
