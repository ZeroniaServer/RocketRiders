#remove join cancel from join pads
schedule function game:uncancelpads 2t append
execute if entity @e[tag=Selection,tag=!pveEnabled,type=armor_stand] run function game:uncancelyellow
scoreboard players reset @e[tag=rr_pve,type=armor_stand] PlayerCap