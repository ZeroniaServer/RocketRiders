#reset tetris for powerups
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_powerups:items/tetrisreset

#Clear crystal crafters
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] captureBlue
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] captureYellow
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] capturePoint
