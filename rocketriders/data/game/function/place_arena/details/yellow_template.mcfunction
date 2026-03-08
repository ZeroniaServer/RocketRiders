## Detail placement for Yellow specifically

# New Dawn
$execute if predicate game:arena_details/middle/slime_pads run place template game:base_details/$(main)/slime_pad 24 49 47 none none 1 0 strict
$execute if predicate game:arena_details/middle/slime_pads run place template game:base_details/$(main)/slime_pad -8 49 47 none none 1 0 strict
$execute if predicate game:arena_details/bottom/slime_pad run place template game:base_details/$(main)/slime_pad 8 39 47 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/platform run place template game:base_details/$(main)/platform_top_sides 17 59 46 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/platform run place template game:base_details/$(main)/platform_top_sides 1 59 46 none none 1 0 strict
$execute if predicate game:arena_details/top/arch run place template game:base_details/$(main)/arch 2 64 54 none none 1 0 strict

# Towers
$execute if predicate game:arena_details/top/towers run place template game:base_details/$(main)/tower 23 64 54 none none 1 0 strict
$execute if predicate game:arena_details/top/towers run place template game:base_details/$(main)/tower -7 64 54 none none 1 0 strict

# Spikes
$execute if predicate game:arena_details/top/spikes run place template game:base_details/$(main)/spikes_top -2 64 48 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/spikes run place template game:base_details/$(main)/spikes_side 6 56 40 none front_back 1 0 strict
$execute if predicate game:arena_details/top_sides/spikes run place template game:base_details/$(main)/spikes_side 18 56 40 none none 1 0 strict
$execute if predicate game:arena_details/middle/spikes run place template game:base_details/$(main)/spikes_middle_right -14 50 29 none none 1 0 strict
$execute if predicate game:arena_details/middle/spikes run place template game:base_details/$(main)/spikes_middle_left 18 50 29 none none 1 0 strict
$execute if predicate game:arena_details/bottom/spikes run place template game:base_details/$(main)/spikes_bottom 8 34 30 none none 1 0 strict

# Layered
$execute if predicate game:arena_details/middle/layered run fill 38 34 49 -14 40 51 $(main)_stained_glass replace #custom:air
$execute if predicate game:arena_details/middle/layered run fill 38 41 50 -14 48 51 $(main)_stained_glass replace #custom:air
$execute if predicate game:arena_details/middle/layered run fill -14 49 51 38 56 51 $(main)_stained_glass replace #custom:air
$execute if predicate game:arena_details/middle/layered run fill 38 63 55 -14 63 52 black_stained_glass replace $(main)_stained_glass
execute if predicate game:arena_details/middle/layered run fill -14 57 51 38 57 51 black_stained_glass replace #custom:air
execute if predicate game:arena_details/middle/layered run fill 38 49 50 -14 49 50 black_stained_glass replace #custom:air
execute if predicate game:arena_details/middle/layered run fill -14 41 49 38 41 49 black_stained_glass replace #custom:air

# Cannons
$execute if predicate game:arena_details/top_sides/cannons run place template game:base_details/$(main)/cannon 18 60 51 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/cannons run place template game:base_details/$(main)/cannon 2 60 51 none none 1 0 strict
$execute if predicate game:arena_details/bottom/cannon run place template game:base_details/$(main)/cannon_bottom 8 37 47 none none 1 0 strict
