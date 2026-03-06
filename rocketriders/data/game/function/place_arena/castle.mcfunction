# Blue
fill -14 34 -52 38 63 -56 deepslate_bricks
fill 38 34 -66 34 63 -57 deepslate_bricks
fill -14 34 -66 -10 63 -57 deepslate_bricks
place template game:arena/castle_part_1 -14 58 -66 none none 1 0 strict
place template game:arena/castle_part_2 34 58 -66 none none 1 0 strict
execute unless predicate game:match_components/red_for_blue run fill -12 66 -51 36 66 -51 minecraft:blue_wall_banner[facing=south]{patterns:[{color:"light_blue",pattern:"minecraft:flow"},{color:"light_blue",pattern:"minecraft:border"}]} replace minecraft:white_wall_banner strict
execute if predicate game:match_components/red_for_blue run fill -12 66 -51 36 66 -51 minecraft:red_wall_banner[facing=south]{patterns:[{color:"pink",pattern:"minecraft:flow"},{color:"pink",pattern:"minecraft:border"}]} replace minecraft:white_wall_banner strict
execute unless predicate game:match_components/red_for_blue run fill 13 63 -57 11 63 -57 cyan_stained_glass
execute if predicate game:match_components/red_for_blue run fill 13 63 -57 11 63 -57 pink_stained_glass
execute unless predicate game:match_components/red_for_blue run setblock 24 63 -57 cyan_stained_glass
execute if predicate game:match_components/red_for_blue run setblock 24 63 -57 pink_stained_glass
execute unless predicate game:match_components/red_for_blue run fill 29 63 -57 27 63 -57 cyan_stained_glass
execute if predicate game:match_components/red_for_blue run fill 29 63 -57 27 63 -57 pink_stained_glass
fill -13 34 -65 -11 67 -63 minecraft:air strict
fill 35 34 -65 37 67 -63 minecraft:air strict

# Yellow
execute if predicate game:match_components/arena/no_yellow_base_details run return 0
fill -14 34 52 38 63 56 deepslate_bricks
fill 38 34 57 34 63 66 deepslate_bricks
fill -14 34 57 -10 63 66 deepslate_bricks
place template game:arena/castle_part_1 38 58 66 180 none 1 0 strict
place template game:arena/castle_part_2 -10 58 66 180 none 1 0 strict
fill -12 66 51 36 66 51 minecraft:yellow_wall_banner[facing=north]{patterns:[{color:"orange",pattern:"minecraft:flower"},{color:"orange",pattern:"minecraft:border"}]} replace minecraft:white_wall_banner strict
setblock 0 63 57 orange_stained_glass
fill -5 63 57 -3 63 57 orange_stained_glass
fill 11 63 57 13 63 57 orange_stained_glass
fill -13 34 63 -11 67 65 minecraft:air strict
fill 35 34 63 37 67 65 minecraft:air strict
