#reset tetris for powerups
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_powerups:items/tetrisreset
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run tag @s remove givenICBM

#remove stinging shield entities
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_powerups:arenaclear/preparebeeshield