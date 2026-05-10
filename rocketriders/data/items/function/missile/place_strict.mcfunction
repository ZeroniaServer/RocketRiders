# missile
# direction_transform = "none"|"180"
# direction_rotation = 0|180
# color = "blue"|"red"|"yellow"|"green"|"white"
# offset_x = <num>
# offset_y = <num>
# offset_z = <num>

$execute rotated $(direction_rotation) 0 run place template game:asset/missile/$(missile)/$(color)_skeleton ^$(offset_x) ^$(offset_y) ^$(offset_z) $(direction_transform)
$execute rotated $(direction_rotation) 0 run place template game:asset/missile/$(missile)/pistons ^$(offset_x) ^$(offset_y) ^$(offset_z) $(direction_transform) none 1 0 strict
$execute rotated $(direction_rotation) 0 run place template game:asset/missile/$(missile)/powerables ^$(offset_x) ^$(offset_y) ^$(offset_z) $(direction_transform) none 1 0 strict
$execute rotated $(direction_rotation) 0 run place template game:asset/missile/$(missile)/tnt ^$(offset_x) ^$(offset_y) ^$(offset_z) $(direction_transform)
