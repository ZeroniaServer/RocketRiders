execute as @e[type=armor_stand,tag=rr_crusade] run function gamemodes:updateid
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=!crusadeEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:enable
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=crusadeEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=crusadeEnabled] run function rr_crusade:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=crusadeLast] run function rr_crusade:iflast