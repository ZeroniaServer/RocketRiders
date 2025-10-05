# arguments: x, y, min_z, max_z

$execute positioned $(x) $(y) 0.0 unless predicate {condition:"location_check",predicate:{position:{y:{min:176}}}} run fill ~ ~ $(min_z) ~3 ~3 $(max_z) air strict
$execute positioned $(x) $(y) 0.0 if predicate {condition:"location_check",predicate:{position:{y:{min:176}}}} unless predicate {condition:"location_check",predicate:{position:{y:{min:181}}}} run fill ~ ~ $(min_z) ~3 180 $(max_z) air strict
scoreboard players add $missile_regions_cleared var 1

data remove storage rocketriders:arena_clear missile_regions[-1]
execute unless score $missile_regions_cleared var matches 22.. if data storage rocketriders:arena_clear missile_regions[0] run function arenaclear:clear_missiles/loop with storage rocketriders:arena_clear missile_regions[-1]
