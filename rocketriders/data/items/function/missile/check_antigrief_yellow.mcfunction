$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) store result score $antigrief_blocks var run clone ~ ~ ~ ~$(start_to_end_relative_x) ~$(start_to_end_relative_y) ~$(start_to_end_relative_z) ~ ~ ~ strict filtered #custom:missile_placement/antigrief_yellow force
return run execute if score $antigrief_blocks var matches 1..
