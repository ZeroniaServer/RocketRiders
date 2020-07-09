function rr_powerups:arenaclear/bee_shield_clear
execute as @e[tag=Selection,type=armor_stand] run function rr_powerups:items/tetrisreset

#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin