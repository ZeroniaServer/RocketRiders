execute as @e[tag=rr_swap] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!swapEnabled,limit=1] SetGamemode = @e[tag=rr_swap,limit=1] gamemodeID run function rr_swap:enable
execute as @e[tag=Selection,tag=swapEnabled] run function rr_swap:ifenabled
execute as @e[tag=Selection,tag=swapLast] run function rr_swap:iflast