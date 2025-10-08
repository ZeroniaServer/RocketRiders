execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!chaseEnabled] run function game:uncancelyellow
scoreboard players reset @e[x=0,type=armor_stand,tag=rr_chase] PlayerCap

#kill stair marker
kill @e[x=0,type=marker,tag=chaseStairs]

function rr_chase:chaseblocks/killall
