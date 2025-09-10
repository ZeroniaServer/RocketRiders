scoreboard players operation $approximate_maximum_block_damage_radius var = $intended_explosion_power var
scoreboard players operation $approximate_maximum_block_damage_radius var *= $26 constant
scoreboard players operation $approximate_maximum_block_damage_radius var /= $15 constant
execute if score $approximate_maximum_block_damage_radius var matches 0..2 run function game:explosion_deepslate_cracks_small
execute if score $approximate_maximum_block_damage_radius var matches 3..6 run function game:explosion_deepslate_cracks_medium
execute if score $approximate_maximum_block_damage_radius var matches 7..10 run function game:explosion_deepslate_cracks_large
