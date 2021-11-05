execute as @e[type=armor_stand,tag=rr_chase] run function gamemodes:updateid
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=!chaseEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_chase,limit=1] gamemodeID run function rr_chase:enable
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=chaseEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_chase,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=chaseEnabled] run function rr_chase:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=chaseLast] run function rr_chase:iflast