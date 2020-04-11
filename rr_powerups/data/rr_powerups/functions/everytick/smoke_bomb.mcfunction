execute as @a[scores={useSmokeBomb=1..}] at @s run particle explosion ~ ~ ~ 1 1 1 0 10 force @a
execute as @a[scores={useSmokeBomb=1..}] at @s run playsound entity.generic.explode neutral @a ~ ~ ~ 0.5 1.25
execute as @a[scores={useSmokeBomb=1..}] at @s run playsound entity.generic.extinguish_fire neutral @a ~ ~ ~ 1 2
scoreboard players reset @a[scores={useSmokeBomb=1..}] useSmokeBomb