execute as @e[x=0,type=armor_stand,tag=rr_pve] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=!pveEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_pve,limit=1] gamemodeID run function rr_pve:enable
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s[tag=pveEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_pve,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=pveEnabled] run function rr_pve:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=pveLast] run function rr_pve:iflast