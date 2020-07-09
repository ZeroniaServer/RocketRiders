execute as @e[tag=rr_pve,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!pveEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_pve,limit=1,type=armor_stand] gamemodeID run function rr_pve:enable
execute as @e[tag=Selection,tag=pveEnabled,type=armor_stand] run function rr_pve:ifenabled
execute as @e[tag=Selection,tag=pveLast,type=armor_stand] run function rr_pve:iflast