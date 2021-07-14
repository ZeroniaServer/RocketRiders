#management
execute as @e[type=armor_stand,tag=rr_chase] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!chaseEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_chase,limit=1] gamemodeID run function rr_chase:enable
execute if score @e[type=armor_stand,tag=Selection,tag=chaseEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_chase,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=chaseEnabled] run function rr_chase:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=chaseLast] run function rr_chase:iflast