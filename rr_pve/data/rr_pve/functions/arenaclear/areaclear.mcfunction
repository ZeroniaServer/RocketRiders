#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin
function game:uncancelyellow
scoreboard players reset @e[tag=rr_pve,type=armor_stand] PlayerCap