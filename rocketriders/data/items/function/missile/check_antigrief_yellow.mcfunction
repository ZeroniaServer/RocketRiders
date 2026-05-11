scoreboard players set $not_in_base var 0
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
  run scoreboard players set $not_in_base var 1
execute if score $not_in_base var matches 1 run return fail

