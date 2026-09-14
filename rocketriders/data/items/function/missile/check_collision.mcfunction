$execute positioned ~$(origin_to_start_relative_x) ~$(origin_to_start_relative_y) ~$(origin_to_start_relative_z) store result score $blocks var run clone ~ ~ ~ ~$(start_to_end_relative_x) ~$(start_to_end_relative_y) ~$(start_to_end_relative_z) ~ ~ ~ strict filtered #custom:missile_placement/collision_control force

scoreboard players set $percentage var 100
scoreboard players operation $percentage var *= $blocks var
scoreboard players operation $percentage var /= $volume var

return run execute if score $percentage var matches 7..
