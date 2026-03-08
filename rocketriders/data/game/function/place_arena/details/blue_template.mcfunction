## Detail placement for Blue specifically

# New Dawn
$execute if predicate game:arena_details/middle/slime_pads run place template game:base_details/$(main)/slime_pad 24 49 -55 none none 1 0 strict
$execute if predicate game:arena_details/middle/slime_pads run place template game:base_details/$(main)/slime_pad -8 49 -55 none none 1 0 strict
$execute if predicate game:arena_details/bottom/slime_pad run place template game:base_details/$(main)/slime_pad 8 39 -55 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/platform run place template game:base_details/$(main)/platform_top_sides 17 59 -54 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/platform run place template game:base_details/$(main)/platform_top_sides 1 59 -54 none none 1 0 strict
$execute if predicate game:arena_details/top/arch run place template game:base_details/$(main)/arch 2 64 -58 none none 1 0 strict

# Towers
$execute if predicate game:arena_details/top/towers run place template game:base_details/$(main)/tower -7 64 -62 none none 1 0 strict
$execute if predicate game:arena_details/top/towers run place template game:base_details/$(main)/tower 23 64 -62 none none 1 0 strict

# Spikes
$execute if predicate game:arena_details/top/spikes run place template game:base_details/$(main)/spikes_top -2 64 -66 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/spikes run place template game:base_details/$(main)/spikes_side -7 56 -53 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/spikes run place template game:base_details/$(main)/spikes_side 31 56 -53 none front_back 1 0 strict
$execute if predicate game:arena_details/bottom/spikes run place template game:base_details/$(main)/spikes_bottom 8 34 -51 none none 1 0 strict
$execute if predicate game:arena_details/middle/spikes run place template game:base_details/$(main)/spikes_middle_right 7 50 -51 none none 1 0 strict
$execute if predicate game:arena_details/middle/spikes run place template game:base_details/$(main)/spikes_middle_left -14 50 -51 none none 1 0 strict

# Layered
$execute if predicate game:arena_details/middle/layered run fill 38 34 -49 -14 40 -51 $(main)_stained_glass replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill -14 41 -50 38 48 -51 $(main)_stained_glass replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill 38 49 -51 -14 56 -51 $(main)_stained_glass replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill -14 63 -55 38 63 -52 black_stained_glass replace $(main)_stained_glass strict
execute if predicate game:arena_details/middle/layered run fill 38 41 -49 -14 41 -49 black_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered run fill 38 57 -51 -14 57 -51 black_stained_glass replace #custom:air strict
execute if predicate game:arena_details/middle/layered run fill -14 49 -50 38 49 -50 black_stained_glass replace #custom:air strict

# Cannons
$execute if predicate game:arena_details/top_sides/cannons run place template game:base_details/$(main)/cannon 18 60 -55 none none 1 0 strict
$execute if predicate game:arena_details/top_sides/cannons run place template game:base_details/$(main)/cannon 2 60 -55 none none 1 0 strict
$execute if predicate game:arena_details/bottom/cannon run place template game:base_details/$(main)/cannon_bottom 8 39 -55 none none 1 0 strict
