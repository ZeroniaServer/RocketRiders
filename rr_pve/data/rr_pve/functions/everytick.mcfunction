execute as @e[tag=rr_pve] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!pveEnabled,limit=1] SetGamemode = @e[tag=rr_pve,limit=1] gamemodeID run function rr_pve:enable
execute as @e[tag=Selection,tag=pveEnabled] run function rr_pve:ifenabled
execute as @e[tag=Selection,tag=pveLast] run function rr_pve:iflast