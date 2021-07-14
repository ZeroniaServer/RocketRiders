#remove join cancel from join pads
schedule function game:uncancelpads 2t append
execute if entity @e[type=armor_stand,tag=Selection,tag=!pveEnabled] run function game:uncancelyellow
scoreboard players reset @e[type=armor_stand,tag=rr_pve] PlayerCap