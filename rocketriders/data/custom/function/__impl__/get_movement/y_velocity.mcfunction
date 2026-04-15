# arguments: min, max, mean

# check range
$execute store success score $low var if predicate {condition:entity_properties,entity:this,predicate:{movement:{y:{min:$(min),max:$(mean)}}}}

# update bounds
execute if score $low var matches 1 run scoreboard players operation $max var = $mean var
execute if score $low var matches 0 run scoreboard players operation $min var = $mean var

# update mean
execute if score $low var matches 1 run scoreboard players operation $mean var += $min var
execute if score $low var matches 0 run scoreboard players operation $mean var += $max var
scoreboard players operation $mean var /= $2 constant

# if the new range is less than or equal to 0.1 blocks/second, convert to blocks/tick and return
scoreboard players operation $diff var = $max var
scoreboard players operation $diff var -= $min var
execute if score $diff var matches ..0100 run return run execute store result score $y_velocity var run scoreboard players operation $min var /= $ticks_per_second constant

# otherwise, repeat for new range
execute if score $low var matches 1 run data modify storage rocketriders:main get_movement.max set from storage rocketriders:main get_movement.mean
execute if score $low var matches 0 run data modify storage rocketriders:main get_movement.min set from storage rocketriders:main get_movement.mean
execute store result storage rocketriders:main get_movement.mean float 0.001 run scoreboard players get $mean var
return run function custom:__impl__/get_movement/y_velocity with storage rocketriders:main get_movement
