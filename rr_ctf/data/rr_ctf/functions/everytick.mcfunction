execute as @e[tag=rr_ctf,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!ctfEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_ctf,limit=1,type=armor_stand] gamemodeID run function rr_ctf:enable
execute as @e[tag=Selection,tag=ctfEnabled,type=armor_stand] run function rr_ctf:ifenabled
execute as @e[tag=Selection,tag=ctfLast,type=armor_stand] run function rr_ctf:iflast