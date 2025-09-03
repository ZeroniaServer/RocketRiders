scoreboard players operation $radius var = $explosion_power var
scoreboard players operation $radius var *= $26 constant
scoreboard players operation $radius var /= $15 constant
execute if score $radius var matches 0..2 run function rr_crusade:game/tnt_cracks_small
execute if score $radius var matches 3..6 run function rr_crusade:game/tnt_cracks
execute if score $radius var matches 7..10 run function rr_crusade:game/tnt_cracks_large
