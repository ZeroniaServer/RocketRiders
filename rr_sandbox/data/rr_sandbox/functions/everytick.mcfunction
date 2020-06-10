execute as @e[tag=rr_sandbox] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!sandboxEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[tag=rr_sandbox,limit=1] gamemodeID run function rr_sandbox:enable
execute as @e[tag=Selection,tag=sandboxEnabled] run function rr_sandbox:ifenabled
execute as @e[tag=Selection,tag=sandboxLast] run function rr_sandbox:iflast
