execute as @e[x=0,type=armor_stand,tag=rr_crusade] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=!crusadeEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:enable
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=crusadeEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] run function rr_crusade:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeLast] run function rr_crusade:iflast