execute as @e[x=0,type=armor_stand,tag=rr_pve] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=!pveEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_pve,limit=1] gamemodeID run function rr_pve:enable
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=pveEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_pve,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,tag=pveEnabled] run function rr_pve:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,tag=pveLast] run function rr_pve:iflast