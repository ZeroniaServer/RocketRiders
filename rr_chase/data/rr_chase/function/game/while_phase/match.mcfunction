#Flagpole
fill 10 64 62 14 67 66 air

fill -14 64 58 39 74 70 air replace white_wool
fill -14 64 58 39 74 70 air replace black_wool
fill -14 64 58 39 74 70 air replace oak_fence

execute unless predicate game:modifiers/hardcore/on run fill 12 64 64 12 71 64 oak_fence
execute if predicate game:modifiers/hardcore/on run fill 12 64 65 12 71 65 oak_fence

#Make flag wave around
scoreboard players operation $flag_wave var = $time match_data
scoreboard players operation $flag_wave var %= $40 constant
execute if score $flag_wave var matches 20..39 unless predicate game:modifiers/hardcore/on run place template game:asset/flag/stage_1/yellow 8 70 63 none none 1 0 strict
execute if score $flag_wave var matches 20..39 if predicate game:modifiers/hardcore/on run place template game:asset/flag/stage_1/yellow 8 70 64 none none 1 0 strict
execute if score $flag_wave var matches 0..19 unless predicate game:modifiers/hardcore/on run place template game:asset/flag/stage_2/yellow 8 70 63 none none 1 0 strict
execute if score $flag_wave var matches 0..19 if predicate game:modifiers/hardcore/on run place template game:asset/flag/stage_2/yellow 8 70 64 none none 1 0 strict

#Place stairs
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright
execute unless predicate game:modifiers/hardcore/on run fill 11 63 62 13 63 64 minecraft:obsidian
execute if predicate game:modifiers/hardcore/on run fill 11 63 64 13 63 64 minecraft:obsidian
