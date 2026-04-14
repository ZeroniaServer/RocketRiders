# Blue
fill -14 34 -52 38 63 -56 deepslate_bricks
fill 38 34 -66 34 63 -57 deepslate_bricks
fill -14 34 -66 -10 63 -57 deepslate_bricks
place template game:asset/castle/part_1/blue -14 58 -66 none none 1 0 strict
place template game:asset/castle/part_2/blue 34 58 -66 none none 1 0 strict
fill -13 34 -65 -11 67 -63 minecraft:air strict
fill 35 34 -65 37 67 -63 minecraft:air strict

# Yellow
execute if predicate game:match_components/arena/no_yellow_base_details run return 0
fill -14 34 52 38 63 56 deepslate_bricks
fill 38 34 57 34 63 66 deepslate_bricks
fill -14 34 57 -10 63 66 deepslate_bricks
place template game:asset/castle/part_1/yellow 38 58 66 180 none 1 0 strict
place template game:asset/castle/part_2/yellow -10 58 66 180 none 1 0 strict
fill -13 34 63 -11 67 65 minecraft:air strict
fill 35 34 63 37 67 65 minecraft:air strict
