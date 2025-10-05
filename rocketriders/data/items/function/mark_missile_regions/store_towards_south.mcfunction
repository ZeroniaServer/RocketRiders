# arguments: x1, y1, x2, y2, z

execute unless data storage rocketriders:arena_clear missile_regions run data modify storage rocketriders:arena_clear missile_regions set value []

$data modify storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y1)}].max_z set value 175
scoreboard players reset $previous_z var
$execute if data storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y1)}] store result score $previous_z var run data get storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y1)}].min_z
$execute unless score $previous_z var matches ..$(z) run data modify storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y1)}].min_z set value $(z)

$data modify storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y2)}].max_z set value 175
scoreboard players reset $previous_z var
$execute if data storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y2)}] store result score $previous_z var run data get storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y2)}].min_z
$execute unless score $previous_z var matches ..$(z) run data modify storage rocketriders:arena_clear missile_regions[{x:$(x1),y:$(y2)}].min_z set value $(z)

$data modify storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y1)}].max_z set value 175
scoreboard players reset $previous_z var
$execute if data storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y1)}] store result score $previous_z var run data get storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y1)}].min_z
$execute unless score $previous_z var matches ..$(z) run data modify storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y1)}].min_z set value $(z)

$data modify storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y2)}].max_z set value 175
scoreboard players reset $previous_z var
$execute if data storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y2)}] store result score $previous_z var run data get storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y2)}].min_z
$execute unless score $previous_z var matches ..$(z) run data modify storage rocketriders:arena_clear missile_regions[{x:$(x2),y:$(y2)}].min_z set value $(z)
