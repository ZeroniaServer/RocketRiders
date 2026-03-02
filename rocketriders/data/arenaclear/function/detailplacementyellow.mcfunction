##Detail placement for Yellow specifically

#New Dawn - Yellow
execute if predicate game:arena_details/middle/slime_pads run place template game:base_details/yellow/slime_pad 24 49 47
execute if predicate game:arena_details/middle/slime_pads run place template game:base_details/yellow/slime_pad -8 49 47
execute if predicate game:arena_details/bottom/slime_pad run place template game:base_details/yellow/slime_pad 8 39 47
execute if predicate game:arena_details/top_sides/platform run place template game:base_details/yellow/platform_top_sides 17 59 46
execute if predicate game:arena_details/top_sides/platform run place template game:base_details/yellow/platform_top_sides 1 59 46
execute if predicate game:arena_details/top/arch run place template game:base_details/yellow/arch 2 64 54

#Towers - Yellow
execute if predicate game:arena_details/top/towers run place template game:base_details/yellow/tower 23 64 54
execute if predicate game:arena_details/top/towers run place template game:base_details/yellow/tower -7 64 54

#Spikes - Yellow
execute if predicate game:arena_details/top/spikes run place template game:base_details/yellow/spikes_top -2 64 48
execute if predicate game:arena_details/top_sides/spikes run place template game:base_details/yellow/spikes_side 6 56 40 none front_back
execute if predicate game:arena_details/top_sides/spikes run place template game:base_details/yellow/spikes_side 18 56 40
execute if predicate game:arena_details/middle/spikes run place template game:base_details/yellow/spikes_middle_right -14 50 29
execute if predicate game:arena_details/middle/spikes run place template game:base_details/yellow/spikes_middle_left 18 50 29
execute if predicate game:arena_details/bottom/spikes run place template game:base_details/yellow/spikes_bottom 8 34 30

#Layered - Yellow
execute if predicate game:arena_details/middle/layered run fill 38 34 49 -14 40 51 minecraft:yellow_stained_glass replace #custom:air
execute if predicate game:arena_details/middle/layered run fill 38 41 50 -14 48 51 minecraft:yellow_stained_glass replace #custom:air
execute if predicate game:arena_details/middle/layered run fill -14 49 51 38 56 51 minecraft:yellow_stained_glass replace #custom:air
execute if predicate game:arena_details/middle/layered run fill 38 63 55 -14 63 52 minecraft:black_stained_glass replace minecraft:yellow_stained_glass
execute if predicate game:arena_details/middle/layered run fill -14 57 51 38 57 51 minecraft:black_stained_glass replace #custom:air
execute if predicate game:arena_details/middle/layered run fill 38 49 50 -14 49 50 minecraft:black_stained_glass replace #custom:air
execute if predicate game:arena_details/middle/layered run fill -14 41 49 38 41 49 minecraft:black_stained_glass replace #custom:air

#Cannons - Yellow
execute if predicate game:arena_details/top_sides/cannons run place template game:base_details/yellow/cannon 18 60 51
execute if predicate game:arena_details/top_sides/cannons run place template game:base_details/yellow/cannon 2 60 51
execute if predicate game:arena_details/bottom/cannon run place template game:base_details/yellow/cannon_bottom 8 37 47
