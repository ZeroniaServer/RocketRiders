execute as @e[x=0,type=armor_stand,tag=rr_ctf] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=!ctfEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run function rr_ctf:enable
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=ctfEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run function rr_ctf:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,tag=ctfLast] run function rr_ctf:iflast
execute as @e[x=0,type=armor_stand,tag=Selection,tag=!ctfEnabled] run function rr_ctf:everytick/clearflagtags