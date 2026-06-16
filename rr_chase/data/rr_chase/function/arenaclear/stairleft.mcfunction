tp @e[x=0,type=marker,tag=chaseStairs,limit=1] ~-1 ~-1 ~
execute unless predicate game:modifiers/hardcore/on run fill ~ ~ ~ ~ ~ ~-4 obsidian
execute unless predicate game:modifiers/hardcore/on run fill ~ ~1 ~ ~ ~4 ~-4 air
execute if predicate game:modifiers/hardcore/on run fill ~ ~ ~ ~ ~ ~-2 obsidian
execute if predicate game:modifiers/hardcore/on run fill ~ ~1 ~ ~ ~4 ~-2 air
execute positioned ~-1 ~-1 ~ if entity @e[limit=1,x=0,type=marker,tag=chaseStairs,predicate=rr_chase:stairs_base_width] run function rr_chase:arenaclear/stairleft