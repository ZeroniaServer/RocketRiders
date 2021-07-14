execute as @e[type=armor_stand,tag=rr_ctf] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!ctfEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run function rr_ctf:enable
execute if score @e[type=armor_stand,tag=Selection,tag=ctfEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=ctfEnabled] run function rr_ctf:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=ctfLast] run function rr_ctf:iflast
execute as @e[type=armor_stand,tag=Selection,tag=!ctfEnabled] run function rr_ctf:everytick/clearflagtags