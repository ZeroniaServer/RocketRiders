execute as @e[x=0,type=armor_stand,tag=rr_swap] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=!swapEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_swap,limit=1] gamemodeID run function rr_swap:enable
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=swapEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_swap,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run function rr_swap:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,tag=swapLast] run function rr_swap:iflast