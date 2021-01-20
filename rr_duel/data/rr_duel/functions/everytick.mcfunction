#management
execute as @e[tag=rr_duel,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!duelEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_duel,limit=1,type=armor_stand] gamemodeID run function rr_duel:enable
execute if score @e[tag=Selection,tag=duelEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_duel,limit=1,type=armor_stand] gamemodeID run tag @e[tag=Selection,type=armor_stand,limit=1] remove switchGamemodes
execute as @e[tag=Selection,tag=duelEnabled,type=armor_stand] run function rr_duel:ifenabled
execute as @e[tag=Selection,tag=duelLast,type=armor_stand] run function rr_duel:iflast
execute as @e[tag=Selection,tag=!noYZELO,type=armor_stand] if entity @e[tag=rr_duel,type=armor_stand,limit=1] run function rr_duel:xp_ranks
execute as @e[tag=Selection,tag=noYZELO,type=armor_stand] run xp add @a -2147483648 levels