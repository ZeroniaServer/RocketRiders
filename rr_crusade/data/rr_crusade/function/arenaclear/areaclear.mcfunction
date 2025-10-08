#tetris reset
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_crusade:items/tetrisreset

##reset pregame bases
#remove armor stands
kill @e[x=0,type=armor_stand,tag=KitSelect]
