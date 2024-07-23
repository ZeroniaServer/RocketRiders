execute as @e[x=0,type=armor_stand,tag=rr_normal] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=!normalEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_normal,limit=1] gamemodeID run function rr_normal:enable
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=normalEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_normal,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalEnabled] run function rr_normal:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalLast] run function rr_normal:iflast