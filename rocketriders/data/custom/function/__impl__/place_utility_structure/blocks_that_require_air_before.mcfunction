# arguments: template, x_length, y_length, z_length, fixed_opposite_corner_x, fixed_opposite_corner_y, fixed_opposite_corner_z

$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) air strict
$place template $(template) -160 184 -160 none none 1 0 strict
$execute positioned -112 184 -160 run fill ~ ~ ~ ~$(x_length) ~$(y_length) ~$(z_length) structure_void strict
$clone -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) -112 184 -160 strict filtered $(blocks_that_require_air)
$execute positioned -112 184 -160 run fill ~ ~ ~ ~$(x_length) ~$(y_length) ~$(z_length) air replace $(blocks_that_require_air) strict
$clone ~ ~ ~ ~$(x_length) ~$(y_length) ~$(z_length) -160 184 -160 strict
$execute positioned -112 184 -160 run clone ~ ~ ~ ~$(x_length) ~$(y_length) ~$(z_length) -160 184 -160 strict masked
$clone -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) -112 184 -160 strict
$execute positioned -112 184 -160 run fill ~ ~ ~ ~$(x_length) ~$(y_length) ~$(z_length) air replace structure_void strict
