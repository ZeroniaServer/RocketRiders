#management
execute as @e[x=0,type=armor_stand,tag=rr_duel] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=!duelEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_duel,limit=1] gamemodeID run function rr_duel:enable
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=duelEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_duel,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=duelEnabled] run function rr_duel:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=duelLast] run function rr_duel:iflast
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noYZELO] if entity @e[x=0,type=armor_stand,tag=rr_duel,limit=1] run function rr_duel:xp_ranks
execute unless predicate game:match_in_play if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noYZELO] as @a[x=0,team=!Blue,team=!Yellow,tag=InRanked] run function rr_duel:forfeit/giveloss