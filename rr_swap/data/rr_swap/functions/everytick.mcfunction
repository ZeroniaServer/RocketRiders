execute as @e[type=armor_stand,tag=rr_swap] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!swapEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_swap,limit=1] gamemodeID run function rr_swap:enable
execute if score @e[type=armor_stand,tag=Selection,tag=swapEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_swap,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=swapEnabled] run function rr_swap:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=swapLast] run function rr_swap:iflast