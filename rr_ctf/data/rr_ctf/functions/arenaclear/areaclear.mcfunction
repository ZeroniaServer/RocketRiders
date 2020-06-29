function rr_powerups:arenaclear/bee_shield_clear
execute as @e[tag=Selection] run function rr_powerups:items/tetrisreset

#remove join cancel from joinpads
tag @e[tag=CancelJoin] remove CancelJoin