bossbar set rr_chase:lead players none
bossbar set rr_chase:lead name {color:"red",text:"No one is in the lead!"}
bossbar set rr_chase:lead value 0

scoreboard objectives setdisplay list
scoreboard players reset * flag_tablist_display
