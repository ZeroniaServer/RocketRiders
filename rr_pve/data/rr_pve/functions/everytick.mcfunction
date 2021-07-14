execute as @e[type=armor_stand,tag=rr_pve] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!pveEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_pve,limit=1] gamemodeID run function rr_pve:enable
execute if score @e[type=armor_stand,tag=Selection,tag=pveEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_pve,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=pveEnabled] run function rr_pve:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=pveLast] run function rr_pve:iflast