# arguments: initial_motion_x, initial_motion_y, initial_motion_z

execute if score $flip_horizontal var matches 0 positioned as @s rotated ~ ~ run tp @s ^ ^ ^0.5
execute if score $flip_horizontal var matches 1 positioned as @s rotated ~180 ~ run tp @s ^ ^ ^0.5
execute if score $flip_vertical var matches 1 if score $towards_down var matches 0 positioned as @s run tp @s ~ -0.75 ~
execute if score $flip_vertical var matches 1 if score $towards_down var matches 1 positioned as @s run tp @s ~ 0.75 ~

$execute positioned as @s run tp @s ~$(initial_motion_x) ~$(initial_motion_y) ~$(initial_motion_z)

data modify storage rocketriders:main wind_spell.final_motion set from entity @s Pos
kill @s
