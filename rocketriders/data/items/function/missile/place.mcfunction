# clone crying obsidian away
$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) run fill -160 184 -160 $(piston_buffer_corner_absolute_x) $(piston_buffer_corner_absolute_y) $(piston_buffer_corner_absolute_z) air strict
$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) positioned ~1 ~1 ~1 run clone ~-2 ~-2 ~-2 ~$(start_to_end_relative_x) ~$(start_to_end_relative_y) ~$(start_to_end_relative_z) -160 184 -160 strict filtered #custom:missile_placement/cannot_replace move

# place missile
$execute rotated $(direction_rotation) 0 run place template game:asset/missile/$(missile)/$(team) ^$(origin_to_placement_local_x) ^$(origin_to_placement_local_y) ^$(origin_to_placement_local_z) $(direction_transform)

# clone crying obsidian back (without updates)
$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) run clone -160 184 -160 $(piston_buffer_corner_absolute_x) $(piston_buffer_corner_absolute_y) $(piston_buffer_corner_absolute_z) ~-1 ~-1 ~-1 strict filtered #custom:missile_placement/cannot_replace
