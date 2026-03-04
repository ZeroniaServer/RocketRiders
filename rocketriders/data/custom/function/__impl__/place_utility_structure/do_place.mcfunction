# arguments: template, x_length, y_length, z_length, fixed_opposite_corner_x, fixed_opposite_corner_y, fixed_opposite_corner_z

$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) air strict
$clone ~ ~ ~ ~$(x_length) ~$(y_length) ~$(z_length) -160 184 -160 filtered crying_obsidian
$place template $(template) ~ ~ ~
$clone -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) ~ ~ ~ masked
$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=$(x_length),dy=$(y_length),dz=$(z_length),type=marker,tag=obsidianshield] positioned as @s run function custom:__impl__/place_utility_structure/replace_glass_pane
