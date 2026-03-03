# Clear 22 regions
scoreboard players set $missile_regions_cleared var 0
function arenaclear:clear_missiles/loop with storage rocketriders:arena_clear missile_regions[-1]
execute unless data storage rocketriders:arena_clear missile_regions[0] run data remove storage rocketriders:arena_clear missile_regions

# Continue next tick if there are regions remaining
execute if data storage rocketriders:arena_clear missile_regions[0] run schedule function arenaclear:clear_missiles/schedule 1t
