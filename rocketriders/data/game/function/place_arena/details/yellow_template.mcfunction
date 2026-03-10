## Detail placement for Yellow specifically

# New Dawn
execute if predicate game:arena_details/middle/slime_pads run place template game:asset/base_detail/slime_pad/yellow 24 49 47 none none 1 0 strict
execute if predicate game:arena_details/middle/slime_pads run place template game:asset/base_detail/slime_pad/yellow -8 49 47 none none 1 0 strict
execute if predicate game:arena_details/bottom/slime_pad run place template game:asset/base_detail/slime_pad/yellow 8 39 47 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform run place template game:asset/base_detail/platform/yellow 17 59 46 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform run place template game:asset/base_detail/platform/yellow 1 59 46 none none 1 0 strict
execute if predicate game:arena_details/top/arch run place template game:asset/base_detail/arch/yellow 2 64 54 none none 1 0 strict

# Towers
execute if predicate game:arena_details/top/towers run place template game:asset/base_detail/tower/yellow 23 64 54 none none 1 0 strict
execute if predicate game:arena_details/top/towers run place template game:asset/base_detail/tower/yellow -7 64 54 none none 1 0 strict

# Spikes
execute if predicate game:arena_details/top/spikes run place template game:asset/base_detail/spikes_top/yellow -2 64 48 none none 1 0 strict
execute if predicate game:arena_details/top_sides/spikes run place template game:asset/base_detail/spikes_side/yellow 6 56 40 none front_back 1 0 strict
execute if predicate game:arena_details/top_sides/spikes run place template game:asset/base_detail/spikes_side/yellow 18 56 40 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes run place template game:asset/base_detail/spikes_middle_right/yellow -14 50 29 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes run place template game:asset/base_detail/spikes_middle_left/yellow 18 50 29 none none 1 0 strict
execute if predicate game:arena_details/bottom/spikes run place template game:asset/base_detail/spikes_bottom/yellow 8 34 30 none none 1 0 strict

# Layered
$execute if predicate game:arena_details/middle/layered run fill 38 34 49 -14 40 51 $(front) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill 38 41 50 -14 48 51 $(front) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill -14 49 51 38 56 51 $(front) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill 38 63 55 -14 63 52 $(detail) replace $(front) strict
$execute if predicate game:arena_details/middle/layered run fill -14 57 51 38 57 51 $(detail) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill 38 49 50 -14 49 50 $(detail) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill -14 41 49 38 41 49 $(detail) replace #custom:air strict

# Cannons
execute if predicate game:arena_details/top_sides/cannons run place template game:asset/base_detail/cannon/yellow 18 60 51 none none 1 0 strict
execute if predicate game:arena_details/top_sides/cannons run place template game:asset/base_detail/cannon/yellow 2 60 51 none none 1 0 strict
execute if predicate game:arena_details/bottom/cannon run place template game:asset/base_detail/cannon_bottom/yellow 8 37 47 none none 1 0 strict
