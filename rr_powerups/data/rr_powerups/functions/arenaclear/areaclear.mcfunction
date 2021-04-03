#reset tetris for powerups
execute as @e[tag=Selection,type=armor_stand] run function rr_powerups:items/tetrisreset

#remove stinging shield entities
execute as @e[tag=Selection,type=armor_stand] run function rr_powerups:arenaclear/preparebeeshield
scoreboard players reset $beetime BeeShieldTime

#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin