tp @e[type=marker,tag=chaseStairs,limit=1] ~ ~ ~
fill ~ ~ ~ ~ ~ ~-4 obsidian
fill ~ ~1 ~ ~ ~4 ~-4 air
execute positioned ~1 ~-1 ~ if entity @e[type=marker,tag=chaseStairs,limit=1,predicate=custom:base_width] run function rr_chase:arenaclear/stairright