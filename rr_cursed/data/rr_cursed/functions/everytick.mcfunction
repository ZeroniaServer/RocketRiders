#management
execute as @e[tag=rr_cursed,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!cursedEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_cursed,limit=1,type=armor_stand] gamemodeID run function rr_cursed:enable
execute as @e[tag=Selection,tag=cursedEnabled,type=armor_stand] run function rr_cursed:ifenabled
execute as @e[tag=Selection,tag=cursedLast,type=armor_stand] run function rr_cursed:iflast