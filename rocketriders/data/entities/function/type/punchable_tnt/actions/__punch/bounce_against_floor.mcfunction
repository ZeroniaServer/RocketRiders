execute if block ~-0.49 ~-0.01 ~-0.49 #custom:non_solid if block ~-0.49 ~-0.01 ~0.49 #custom:non_solid if block ~0.49 ~-0.01 ~-0.49 #custom:non_solid if block ~0.49 ~-0.01 ~0.49 #custom:non_solid run return 0
scoreboard players add $y_bounces var 1

scoreboard players set $against_honey var 1
execute unless block ~-0.49 ~-0.01 ~-0.49 honey_block unless block ~-0.49 ~-0.01 ~0.49 honey_block unless block ~0.49 ~-0.01 ~-0.49 honey_block unless block ~0.49 ~-0.01 ~0.49 honey_block run scoreboard players set $against_honey var 0
execute if score $against_honey var matches 1 run scoreboard players set $touching_honey var 1
execute if score $against_honey var matches 1 run return run execute if score $impulse_y var matches ..-1 run scoreboard players set $impulse_y var 0

execute unless score $impulse_y var matches ..-1 run return 0
scoreboard players operation $impulse_y var *= $-1 constant
execute unless predicate game:modifiers/zero_gravity_tnt/on if score $impulse_y var matches ..200 run scoreboard players set $impulse_y var 200
execute if predicate game:modifiers/zero_gravity_tnt/on run scoreboard players operation $impulse_y var /= $2 constant
execute if predicate game:modifiers/zero_gravity_tnt/on if score $impulse_y var matches ..100 run scoreboard players set $impulse_y var 100
