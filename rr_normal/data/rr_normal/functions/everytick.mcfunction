#management
execute as @e[type=armor_stand,tag=rr_normal] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!normalEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID run function rr_normal:enable
execute if score @e[type=armor_stand,tag=Selection,tag=normalEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=normalEnabled] run function rr_normal:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=normalLast] run function rr_normal:iflast