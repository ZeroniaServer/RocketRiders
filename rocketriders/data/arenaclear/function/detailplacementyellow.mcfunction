##Detail placement for Yellow specifically

#New Dawn - Yellow
execute if predicate game:arena_details/middle/slime_pads run place template game:yellow_cornerhole 24 49 47
execute if predicate game:arena_details/middle/slime_pads run place template game:yellow_cornerhole -8 49 47
execute if predicate game:arena_details/bottom/slime_pad run place template game:yellow_cornerhole 8 39 47
execute if predicate game:arena_details/top_sides/platform run place template game:yellow_topplatform 17 59 46
execute if predicate game:arena_details/top_sides/platform run place template game:yellow_topplatform 1 59 46
execute if predicate game:arena_details/top/arch run place template game:yellow_arch 2 64 54

#Towers - Yellow
execute if predicate game:arena_details/top/towers run place template game:yellow_archertower 23 64 54
execute if predicate game:arena_details/top/towers run place template game:yellow_archertower -7 64 54

#Spikes - Yellow
execute if predicate game:arena_details/top/spikes run place template game:yellow_spiketop -2 64 48
execute if predicate game:arena_details/top_sides/spikes run place template game:yellow_spikeside 6 56 40 none front_back
execute if predicate game:arena_details/top_sides/spikes run place template game:yellow_spikeside 18 56 40
execute if predicate game:arena_details/middle/spikes run place template game:yellow_spikemid_right -14 50 29
execute if predicate game:arena_details/middle/spikes run place template game:yellow_spikemid_left 18 50 29
execute if predicate game:arena_details/bottom/spikes run place template game:yellow_spikebottom 8 34 30

#Layered - Yellow
execute if predicate game:arena_details/middle/layered run fill 38 34 49 -14 40 51 minecraft:yellow_stained_glass replace air
execute if predicate game:arena_details/middle/layered run fill 38 41 50 -14 48 51 minecraft:yellow_stained_glass replace air
execute if predicate game:arena_details/middle/layered run fill -14 49 51 38 56 51 minecraft:yellow_stained_glass replace air
execute if predicate game:arena_details/middle/layered run fill 38 63 55 -14 63 52 minecraft:black_stained_glass replace minecraft:yellow_stained_glass
execute if predicate game:arena_details/middle/layered run fill -14 57 51 38 57 51 minecraft:black_stained_glass replace air
execute if predicate game:arena_details/middle/layered run fill 38 49 50 -14 49 50 minecraft:black_stained_glass replace air
execute if predicate game:arena_details/middle/layered run fill -14 41 49 38 41 49 minecraft:black_stained_glass replace air

#Cannons - Yellow
execute if predicate game:arena_details/top_sides/cannons run place template game:yellow_cannon 18 60 51
execute if predicate game:arena_details/top_sides/cannons run place template game:yellow_cannon 2 60 51
execute if predicate game:arena_details/bottom/cannon run place template game:yellow_cannon_bottom 8 37 47