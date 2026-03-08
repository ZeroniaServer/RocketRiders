## Blue
# Layers
$fill -14 34 -66 38 63 -62 $(blue_back_new) replace $(blue_back_old) strict
$fill -14 34 -61 38 63 -57 $(blue_middle_new) replace $(blue_middle_old) strict
$fill -14 34 -56 38 63 -52 $(blue_front_new) replace $(blue_front_old) strict

execute if predicate game:arena_details/top_sides/platform if predicate game:match_components/red_for_blue run fill 21 63 -52 19 63 -53 pink_stained_glass replace red_stained_glass strict
execute if predicate game:arena_details/top_sides/platform if predicate game:match_components/red_for_blue run fill 5 63 -52 3 63 -53 pink_stained_glass replace red_stained_glass strict

execute if predicate game:arena_details/middle/slime_pads if predicate game:match_components/red_for_blue run fill 29 53 -52 27 53 -53 pink_stained_glass replace red_stained_glass strict
execute if predicate game:arena_details/middle/slime_pads if predicate game:match_components/red_for_blue run fill -3 53 -52 -5 53 -53 pink_stained_glass replace red_stained_glass strict

execute if predicate game:arena_details/bottom/slime_pad if predicate game:match_components/red_for_blue run fill 13 43 -52 11 43 -53 pink_stained_glass replace red_stained_glass strict

## Yellow
# Layers
$fill -14 34 62 38 63 66 $(yellow_back_new) replace $(yellow_back_old) strict
$fill -14 34 57 38 63 61 $(yellow_middle_new) replace $(yellow_middle_old) strict
$fill -14 34 52 38 63 56 $(yellow_front_new) replace $(yellow_front_old) strict

execute if predicate game:arena_details/top_sides/platform if predicate game:match_components/green_for_yellow run fill 3 63 52 5 63 53 minecraft:lime_stained_glass replace minecraft:green_stained_glass
execute if predicate game:arena_details/top_sides/platform if predicate game:match_components/green_for_yellow run fill 19 63 52 21 63 53 minecraft:lime_stained_glass replace minecraft:green_stained_glass

execute if predicate game:arena_details/middle/slime_pads if predicate game:match_components/green_for_yellow run fill -5 53 52 -3 53 53 minecraft:lime_stained_glass replace minecraft:green_stained_glass
execute if predicate game:arena_details/middle/slime_pads if predicate game:match_components/green_for_yellow run fill 27 53 52 29 53 53 minecraft:lime_stained_glass replace minecraft:green_stained_glass

execute if predicate game:arena_details/bottom/slime_pad if predicate game:match_components/green_for_yellow run fill 11 43 52 13 43 53 minecraft:lime_stained_glass replace minecraft:green_stained_glass
