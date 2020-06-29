execute as @e[tag=rr_ctf] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!ctfEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[tag=rr_ctf,limit=1] gamemodeID run function rr_ctf:enable
execute as @e[tag=Selection,tag=ctfEnabled] run function rr_ctf:ifenabled
execute as @e[tag=Selection,tag=ctfLast] run function rr_ctf:iflast