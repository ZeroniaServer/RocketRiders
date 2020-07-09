execute as @e[tag=rr_crusade,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!crusadeEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_crusade,limit=1,type=armor_stand] gamemodeID run function rr_crusade:enable
execute as @e[tag=Selection,tag=crusadeEnabled,type=armor_stand] run function rr_crusade:ifenabled
execute as @e[tag=Selection,tag=crusadeLast,type=armor_stand] run function rr_crusade:iflast