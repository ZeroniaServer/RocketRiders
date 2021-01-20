#management
execute as @e[tag=rr_normal,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!normalEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_normal,limit=1,type=armor_stand] gamemodeID run function rr_normal:enable
execute if score @e[tag=Selection,tag=normalEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_normal,limit=1,type=armor_stand] gamemodeID run tag @e[tag=Selection,type=armor_stand,limit=1] remove switchGamemodes
execute as @e[tag=Selection,tag=normalEnabled,type=armor_stand] run function rr_normal:ifenabled
execute as @e[tag=Selection,tag=normalLast,type=armor_stand] run function rr_normal:iflast