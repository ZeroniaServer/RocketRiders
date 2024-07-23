execute as @e[x=0,type=armor_stand,tag=rr_chase] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=!chaseEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_chase,limit=1] gamemodeID run function rr_chase:enable
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=chaseEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_chase,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run function rr_chase:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseLast] run function rr_chase:iflast