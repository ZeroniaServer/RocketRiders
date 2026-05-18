# Clear flag base
fill 10 64 62 14 67 66 air

# Waving flag
scoreboard players operation $flag_wave var = $time match_data
scoreboard players operation $flag_wave var %= $40 constant
execute if score $flag_wave var matches 0 positioned as @e[limit=1,x=0,type=marker,tag=checkered_flag] run function rr_chase:game/checkered_flag/set_stage_1
execute if score $flag_wave var matches 20 positioned as @e[limit=1,x=0,type=marker,tag=checkered_flag] run function rr_chase:game/checkered_flag/set_stage_2

#Place stairs
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright
execute unless predicate game:modifiers/hardcore/on run fill 11 63 62 13 63 64 minecraft:obsidian
execute if predicate game:modifiers/hardcore/on run fill 11 63 64 13 63 64 minecraft:obsidian
