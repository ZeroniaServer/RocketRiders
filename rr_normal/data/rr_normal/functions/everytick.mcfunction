#management
execute as @e[tag=rr_normal] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!normalEnabled,limit=1] SetGamemode = @e[tag=rr_normal,limit=1] gamemodeID run function rr_normal:enable
execute as @e[tag=Selection,tag=normalEnabled] run function rr_normal:ifenabled
execute as @e[tag=Selection,tag=normalLast] run function rr_normal:iflast