$execute align xyz positioned ~.5 ~.5 ~.5 \
  positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~$(start_to_end_relative_x) ~ ~ unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~ ~ ~$(start_to_end_relative_z) unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~-$(start_to_end_relative_x) ~ ~ unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~ ~$(start_to_end_relative_y) ~-$(start_to_end_relative_z) unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~$(start_to_end_relative_x) ~ ~ unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~ ~ ~$(start_to_end_relative_z) unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~-$(start_to_end_relative_x) ~ ~ unless predicate custom:location/inside_yellow_base_blocks_region \
  positioned ~ ~ ~-$(start_to_end_relative_z) unless predicate custom:location/inside_yellow_base_blocks_region \
  run return fail
return 1