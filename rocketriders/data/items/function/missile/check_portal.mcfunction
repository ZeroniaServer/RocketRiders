$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) positioned ~1 ~1 ~1 store result score $nether_portal_blocks var run clone ~-2 ~-2 ~-2 ~$(start_to_end_relative_x) ~$(start_to_end_relative_y) ~$(start_to_end_relative_z) ~-2 ~-2 ~-2 strict filtered nether_portal force
return run execute if score $nether_portal_blocks var matches 1..
