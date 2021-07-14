execute as @e[type=armor_stand,tag=rr_crusade] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!crusadeEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:enable
execute if score @e[type=armor_stand,tag=Selection,tag=crusadeEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=crusadeEnabled] run function rr_crusade:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=crusadeLast] run function rr_crusade:iflast