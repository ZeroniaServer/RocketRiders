execute as @e[tag=rr_crusade] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!crusadeEnabled,limit=1] SetGamemode = @e[tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:enable
execute as @e[tag=Selection,tag=crusadeEnabled] run function rr_crusade:ifenabled
execute as @e[tag=Selection,tag=crusadeLast] run function rr_crusade:iflast