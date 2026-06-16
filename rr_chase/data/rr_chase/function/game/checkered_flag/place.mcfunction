summon block_display ~0.001 ~ ~0.001 {Tags:["checkered_flag","checkered_flag.pole_1"],block_state:{Name:"minecraft:oak_fence"},view_range:100,transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0.998,1,0.998]}}
summon block_display ~0.001 ~1 ~0.001 {Tags:["checkered_flag","checkered_flag.pole_2"],block_state:{Name:"minecraft:oak_fence"},view_range:100,transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0.998,1,0.998]}}
summon block_display ~0.001 ~2 ~0.001 {Tags:["checkered_flag","checkered_flag.pole_3"],block_state:{Name:"minecraft:oak_fence"},view_range:100,transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0.998,1,0.998]}}
summon block_display ~0.001 ~3 ~0.001 {Tags:["checkered_flag","checkered_flag.pole_4"],block_state:{Name:"minecraft:oak_fence"},view_range:100,transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0.998,1,0.998]}}
summon block_display ~0.001 ~4 ~0.001 {Tags:["checkered_flag","checkered_flag.pole_5"],block_state:{Name:"minecraft:oak_fence"},view_range:100,transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0.998,1,0.998]}}
summon block_display ~0.001 ~5 ~0.001 {Tags:["checkered_flag","checkered_flag.pole_6"],block_state:{Name:"minecraft:oak_fence"},view_range:100,transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0.998,1,0.998]}}
summon block_display ~0.001 ~6 ~0.001 {Tags:["checkered_flag","checkered_flag.pole_7"],block_state:{Name:"minecraft:oak_fence"},view_range:100,transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0.998,1,0.998]}}
fill ~ ~ ~ ~ ~6 ~ oak_fence strict

summon block_display ~ ~7 ~ {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_0"],block_state:{Name:"minecraft:black_wool"},view_range:100}
summon block_display ~-1 ~6 ~ {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_1"],block_state:{Name:"minecraft:black_wool"},view_range:100}
summon block_display ~-1 ~7 ~ {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_2"],block_state:{Name:"minecraft:white_wool"},view_range:100}
summon block_display ~-2 ~6 ~-1 {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_3"],block_state:{Name:"minecraft:white_wool"},view_range:100}
summon block_display ~-2 ~7 ~-1 {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_4"],block_state:{Name:"minecraft:black_wool"},view_range:100}
summon block_display ~-3 ~6 ~-1 {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_5"],block_state:{Name:"minecraft:black_wool"},view_range:100}
summon block_display ~-3 ~7 ~-1 {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_6"],block_state:{Name:"minecraft:white_wool"},view_range:100}
summon block_display ~-4 ~6 ~-1 {Tags:["checkered_flag","checkered_flag.flag","checkered_flag.flag_7"],block_state:{Name:"minecraft:white_wool"},view_range:100}

execute if predicate game:modifiers/sonar/on as @e[x=0,type=block_display,tag=checkered_flag] run data modify entity @s Glowing set value true
