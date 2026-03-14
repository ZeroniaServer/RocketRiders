# Click sound
tag @s add time_of_day.this
execute positioned -68.88 192.5 73.5 at @s run playsound ui.button.click master @a[x=0,tag=!time_of_day.this] ~ ~ ~ 1 1
tag @s remove time_of_day.this

# Convert to ticks
scoreboard players operation $daytime var = @s config.time_of_day
scoreboard players operation $daytime var /= $1000 constant
scoreboard players remove $daytime var 600
execute store result storage rocketriders:main time_of_day.daytime int 10 run scoreboard players operation $daytime var %= $2400 constant
function everytick:trigger_commands/config.time_of_day/set_time with storage rocketriders:main time_of_day
data remove storage rocketriders:main time_of_day

# Refresh signs
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
