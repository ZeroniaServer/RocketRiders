execute as @e[x=0,type=armor_stand,tag=rr_classic] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=!classicEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_classic,limit=1] gamemodeID run function rr_classic:enable
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=classicEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_classic,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=classicEnabled] run function rr_classic:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=classicLast] run function rr_classic:iflast