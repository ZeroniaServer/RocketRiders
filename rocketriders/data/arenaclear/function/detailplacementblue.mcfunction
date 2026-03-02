##Detail placement for Blue specifically

#New Dawn - Blue
execute if predicate game:arena_details/middle/slime_pads unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/slime_pad 24 49 -55 none none 1 0 strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/slime_pad 24 49 -55 none none 1 0 strict

execute if predicate game:arena_details/middle/slime_pads unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/slime_pad -8 49 -55 none none 1 0 strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/slime_pad -8 49 -55 none none 1 0 strict

execute if predicate game:arena_details/bottom/slime_pad unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/slime_pad 8 39 -55 none none 1 0 strict
execute if predicate game:arena_details/bottom/slime_pad if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/slime_pad 8 39 -55 none none 1 0 strict

execute if predicate game:arena_details/top_sides/platform unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/platform_top_sides 17 59 -54 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/platform_top_sides 17 59 -54 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/platform_top_sides 1 59 -54 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/platform_top_sides 1 59 -54 none none 1 0 strict

execute if predicate game:arena_details/top/arch unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/arch 2 64 -58 none none 1 0 strict
execute if predicate game:arena_details/top/arch if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/arch 2 64 -58 none none 1 0 strict

#Towers - Blue
execute if predicate game:arena_details/top/towers unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/tower -7 64 -62 none none 1 0 strict
execute if predicate game:arena_details/top/towers if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/tower -7 64 -62 none none 1 0 strict

execute if predicate game:arena_details/top/towers unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/tower 23 64 -62 none none 1 0 strict
execute if predicate game:arena_details/top/towers if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/tower 23 64 -62 none none 1 0 strict

#Spikes - Blue
execute if predicate game:arena_details/top/spikes unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/spikes_top -2 64 -66 none none 1 0 strict
execute if predicate game:arena_details/top/spikes if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/spikes_top -2 64 -66 none none 1 0 strict

execute if predicate game:arena_details/top_sides/spikes unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/spikes_side -7 56 -53 none none 1 0 strict
execute if predicate game:arena_details/top_sides/spikes if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/spikes_side -7 56 -53 none none 1 0 strict

execute if predicate game:arena_details/top_sides/spikes unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/spikes_side 31 56 -53 none front_back 1 0 strict
execute if predicate game:arena_details/top_sides/spikes if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/spikes_side 31 56 -53 none front_back 1 0 strict

execute if predicate game:arena_details/bottom/spikes unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/spikes_bottom 8 34 -51 none none 1 0 strict
execute if predicate game:arena_details/bottom/spikes if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/spikes_bottom 8 34 -51 none none 1 0 strict

execute if predicate game:arena_details/middle/spikes unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/spikes_middle_right 7 50 -51 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/spikes_middle_right 7 50 -51 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/spikes_middle_left -14 50 -51 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/spikes_middle_left -14 50 -51 none none 1 0 strict

#Layered - Blue
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill 38 34 -49 -14 40 -51 minecraft:blue_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill -14 41 -50 38 48 -51 minecraft:blue_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill 38 49 -51 -14 56 -51 minecraft:blue_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered unless predicate game:gamemode_components/red_for_blue run fill -14 63 -55 38 63 -52 minecraft:black_stained_glass replace minecraft:blue_stained_glass strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill 38 34 -49 -14 40 -51 minecraft:red_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill -14 41 -50 38 48 -51 minecraft:red_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill 38 49 -51 -14 56 -51 minecraft:red_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered if predicate game:gamemode_components/red_for_blue run fill -14 63 -55 38 63 -52 minecraft:black_stained_glass replace minecraft:red_stained_glass strict
execute if predicate game:arena_details/middle/layered run fill 38 41 -49 -14 41 -49 minecraft:black_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered run fill 38 57 -51 -14 57 -51 minecraft:black_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered run fill -14 49 -50 38 49 -50 minecraft:black_stained_glass replace #custom:air strict

#Cannons - Blue
execute if predicate game:arena_details/top_sides/cannons unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/cannon 18 60 -55 none none 1 0 strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/cannon 18 60 -55 none none 1 0 strict

execute if predicate game:arena_details/top_sides/cannons unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/cannon 2 60 -55 none none 1 0 strict
execute if predicate game:arena_details/top_sides/cannons if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/cannon 2 60 -55 none none 1 0 strict

execute if predicate game:arena_details/bottom/cannon unless predicate game:gamemode_components/red_for_blue run place template game:base_details/blue/cannon_bottom 8 39 -55 none none 1 0 strict
execute if predicate game:arena_details/bottom/cannon if predicate game:gamemode_components/red_for_blue run place template game:base_details/red/cannon_bottom 8 39 -55 none none 1 0 strict
