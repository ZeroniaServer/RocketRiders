execute as @e[type=armor_stand,tag=rr_normal] run function gamemodes:updateid
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=!normalEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID run function rr_normal:enable
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=normalEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=normalEnabled] run function rr_normal:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=normalLast] run function rr_normal:iflast