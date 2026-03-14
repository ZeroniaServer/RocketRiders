# Click sound
execute positioned -68.88 192.5 73.5 if entity @s[distance=..10] at @s run playsound ui.button.click master @a[x=0,tag=!time_of_day.this] ~ ~ ~ 1 1

# Set time
execute if score @s config.time_of_day matches 2 run time set 0t
execute if score @s config.time_of_day matches 3 run time set 1000t
execute if score @s config.time_of_day matches 4 run time set 6000t
execute if score @s config.time_of_day matches 5 run time set 13000t
execute if score @s config.time_of_day matches 6 run time set 18000t

# Refresh signs
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
