#management
execute as @e[type=armor_stand,tag=rr_duel] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!duelEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_duel,limit=1] gamemodeID run function rr_duel:enable
execute if score @e[type=armor_stand,tag=Selection,tag=duelEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_duel,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=duelEnabled] run function rr_duel:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=duelLast] run function rr_duel:iflast
execute as @e[type=armor_stand,tag=Selection,tag=!noYZELO] if entity @e[type=armor_stand,tag=rr_duel,limit=1] run function rr_duel:xp_ranks
execute as @e[type=armor_stand,tag=Selection,tag=noYZELO] run xp add @a -2147483648 levels
execute as @e[type=armor_stand,tag=Selection,tag=!GameStarted,tag=!noYZELO] as @a[team=!Blue,team=!Yellow,tag=InRanked] run function rr_duel:forfeit/giveloss