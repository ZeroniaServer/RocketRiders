#management
execute as @e[tag=rr_chase,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!chaseEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_chase,limit=1,type=armor_stand] gamemodeID run function rr_chase:enable
execute as @e[tag=Selection,tag=chaseEnabled,type=armor_stand] run function rr_chase:ifenabled
execute as @e[tag=Selection,tag=chaseLast,type=armor_stand] run function rr_chase:iflast