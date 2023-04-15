#management
execute as @e[type=armor_stand,tag=rr_duel] run function gamemodes:updateid
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=!duelEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_duel,limit=1] gamemodeID run function rr_duel:enable
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=duelEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_duel,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=duelEnabled] run function rr_duel:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=duelLast] run function rr_duel:iflast
execute as @e[type=armor_stand,tag=Selection,tag=!noYZELO] if entity @e[type=armor_stand,tag=rr_duel,limit=1] run function rr_duel:xp_ranks
execute as @e[type=armor_stand,tag=Selection,tag=noYZELO] run xp add @a[predicate=custom:indimension] -2147483648 levels
execute as @e[type=armor_stand,tag=Selection,tag=!GameStarted,tag=!noYZELO] as @a[predicate=custom:indimension,team=!Blue,team=!Yellow,tag=InRanked] run function rr_duel:forfeit/giveloss