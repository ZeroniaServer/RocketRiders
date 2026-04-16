## Detail placement for Blue specifically

# New Dawn
execute if predicate game:arena_details/middle/slime_pads run place template game:asset/base_detail/slime_pad/blue 24 49 -55 none none 1 0 strict
execute if predicate game:arena_details/middle/slime_pads run place template game:asset/base_detail/slime_pad/blue -8 49 -55 none none 1 0 strict
execute if predicate game:arena_details/bottom/slime_pad run place template game:asset/base_detail/slime_pad/blue 8 39 -55 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform run place template game:asset/base_detail/platform/blue 17 59 -54 none none 1 0 strict
execute if predicate game:arena_details/top_sides/platform run place template game:asset/base_detail/platform/blue 1 59 -54 none none 1 0 strict
execute if predicate game:arena_details/top/arch run place template game:asset/base_detail/arch/blue 2 64 -58 none none 1 0 strict

# Towers
execute if predicate game:arena_details/top/towers run place template game:asset/base_detail/tower/blue -7 64 -62 none none 1 0 strict
execute if predicate game:arena_details/top/towers run place template game:asset/base_detail/tower/blue 23 64 -62 none none 1 0 strict

# Spikes
execute if predicate game:arena_details/top/spikes run place template game:asset/base_detail/spikes_top/blue -2 64 -66 none none 1 0 strict
execute if predicate game:arena_details/top_sides/spikes run place template game:asset/base_detail/spikes_side/blue -7 56 -53 none none 1 0 strict
execute if predicate game:arena_details/top_sides/spikes run place template game:asset/base_detail/spikes_side/blue 31 56 -53 none front_back 1 0 strict
execute if predicate game:arena_details/bottom/spikes run place template game:asset/base_detail/spikes_bottom/blue 8 34 -51 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes run place template game:asset/base_detail/spikes_middle_right/blue 7 50 -51 none none 1 0 strict
execute if predicate game:arena_details/middle/spikes run place template game:asset/base_detail/spikes_middle_left/blue -14 50 -51 none none 1 0 strict

# Layered
$execute if predicate game:arena_details/middle/layered run fill 38 34 -49 -14 40 -51 $(front) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill -14 41 -50 38 48 -51 $(front) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill 38 49 -51 -14 56 -51 $(front) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered unless predicate game:arena_details/top/castle run fill -14 63 -55 38 63 -52 $(detail) replace $(front) strict
$execute if predicate game:arena_details/middle/layered run fill 38 41 -49 -14 41 -49 $(detail) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill 38 57 -51 -14 57 -51 $(detail) replace #custom:air strict
$execute if predicate game:arena_details/middle/layered run fill -14 49 -50 38 49 -50 $(detail) replace #custom:air strict

# Cannons
execute if predicate game:arena_details/top_sides/cannons run place template game:asset/base_detail/cannon/blue 18 60 -55 none none 1 0 strict
execute if predicate game:arena_details/top_sides/cannons run place template game:asset/base_detail/cannon/blue 2 60 -55 none none 1 0 strict
execute if predicate game:arena_details/bottom/cannon run place template game:asset/base_detail/cannon_bottom/blue 8 39 -55 none none 1 0 strict
