execute as @e[tag=rr_swap,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!swapEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_swap,limit=1,type=armor_stand] gamemodeID run function rr_swap:enable
execute as @e[tag=Selection,tag=swapEnabled,type=armor_stand] run function rr_swap:ifenabled
execute as @e[tag=Selection,tag=swapLast,type=armor_stand] run function rr_swap:iflast