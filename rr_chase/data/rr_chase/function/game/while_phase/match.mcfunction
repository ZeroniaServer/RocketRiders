#Flagpole
fill 10 64 62 14 67 66 air

fill 12 64 64 12 71 64 oak_fence replace #custom:basereplace

fill -14 64 66 39 74 70 air replace white_wool
fill -14 64 66 39 74 70 air replace black_wool
fill -14 64 65 39 74 70 air replace oak_fence

fill -14 64 62 39 74 58 air replace white_wool
fill -14 64 62 39 74 58 air replace black_wool
fill -14 64 63 39 74 58 air replace oak_fence

#Make flag wave around
scoreboard players add $checkered_flag_waving_animation_timer global 1
execute unless score $checkered_flag_waving_animation_timer global matches 0..39 run scoreboard players set $checkered_flag_waving_animation_timer global 0
execute if score $checkered_flag_waving_animation_timer global matches 20..39 run place template game:asset/flag/stage_1/yellow 8 70 63 none none 1 0 strict
execute if score $checkered_flag_waving_animation_timer global matches 0..19 run place template game:asset/flag/stage_2/yellow 8 70 63 none none 1 0 strict

#Place stairs
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright
execute unless predicate game:modifiers/hardcore/on run fill 11 63 62 13 63 64 minecraft:obsidian
execute if predicate game:modifiers/hardcore/on run fill 11 63 63 13 63 64 minecraft:obsidian
