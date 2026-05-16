# move irreplaceables and nearby suppressed blocks away (without updates)
$fill -160 184 -160 $(piston_buffer_corner_absolute_x) $(piston_buffer_corner_absolute_y) $(piston_buffer_corner_absolute_z) air strict
$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) positioned ~1 ~1 ~1 run clone ~-2 ~-2 ~-2 ~$(start_to_end_relative_x) ~$(start_to_end_relative_y) ~$(start_to_end_relative_z) -160 184 -160 strict filtered #custom:missile_placement/pierce_prevention_preserved move

# place (with updates) everything other than suppressed blocks (allows TNT to ignite without updating pistons/observers; suppressed blocks are temporarily replaced with cobblestone blocks to prevent ghost TNT ignitions)
$execute rotated $(direction_rotation) 0 run place template game:asset/missile/$(missile)/$(team)_no_suppressibles ^$(origin_to_placement_local_x) ^$(origin_to_placement_local_y) ^$(origin_to_placement_local_z) $(direction_transform)

# place suppressed blocks (pistons/observers, without updates)
$execute rotated $(direction_rotation) 0 run place template game:asset/missile/$(missile)/suppressibles ^$(origin_to_placement_local_x) ^$(origin_to_placement_local_y) ^$(origin_to_placement_local_z) $(direction_transform) none 1 0 strict

# move irreplaceables and nearby suppressed back (without updates)
$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) run clone -160 184 -160 $(piston_buffer_corner_absolute_x) $(piston_buffer_corner_absolute_y) $(piston_buffer_corner_absolute_z) ~-1 ~-1 ~-1 strict masked
