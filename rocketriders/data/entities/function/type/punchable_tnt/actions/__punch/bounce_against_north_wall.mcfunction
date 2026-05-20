execute if block ~-0.49 ~ ~-0.5 #custom:non_solid if block ~-0.49 ~0.49 ~-0.5 #custom:non_solid if block ~0.49 ~ ~-0.5 #custom:non_solid if block ~0.49 ~0.49 ~-0.5 #custom:non_solid run return 0
scoreboard players add $z_bounces var 1

scoreboard players set $against_honey var 1
execute unless block ~-0.49 ~ ~-0.5 honey_block unless block ~-0.49 ~0.49 ~-0.5 honey_block unless block ~0.49 ~ ~-0.5 honey_block unless block ~0.49 ~0.49 ~-0.5 honey_block run scoreboard players set $against_honey var 0
execute if score $against_honey var matches 1 run scoreboard players set $touching_honey var 1
execute if score $against_honey var matches 1 run return run scoreboard players set $impulse_z var 0

scoreboard players operation $impulse_z var *= $-1 constant
scoreboard players operation $impulse_z var /= $2 constant
execute if score $impulse_z var matches ..100 run scoreboard players set $impulse_z var 100
