execute if block ~0.5 ~ ~-0.49 #custom:non_solid if block ~0.5 ~0.49 ~-0.49 #custom:non_solid if block ~0.5 ~ ~0.49 #custom:non_solid if block ~0.5 ~0.49 ~0.49 #custom:non_solid run return 0
scoreboard players add $x_bounces var 1

scoreboard players set $against_honey var 1
execute unless block ~0.5 ~ ~-0.49 honey_block unless block ~0.5 ~0.49 ~-0.49 honey_block unless block ~0.5 ~ ~0.49 honey_block unless block ~0.5 ~0.49 ~0.49 honey_block run scoreboard players set $against_honey var 0
execute if score $against_honey var matches 1 run scoreboard players set $touching_honey var 1
execute if score $against_honey var matches 1 run return run scoreboard players set $impulse_x var 0

scoreboard players operation $impulse_x var *= $-1 constant
scoreboard players operation $impulse_x var /= $2 constant
execute if score $impulse_x var matches -100.. run scoreboard players set $impulse_x var -100
