# arguments: template, x_length, y_length, z_length, fixed_opposite_corner_x, fixed_opposite_corner_y, fixed_opposite_corner_z

$fill -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) air strict
$execute positioned -112 184 -160 run clone ~ ~ ~ ~$(x_length) ~$(y_length) ~$(z_length) -160 184 -160 strict
$clone -160 184 -160 $(fixed_opposite_corner_x) $(fixed_opposite_corner_y) $(fixed_opposite_corner_z) ~ ~ ~ strict masked
