execute as @e[x=0,type=armor_stand,tag=rr_sandbox] run function gamemodes:updateid
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=!sandboxEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run function rr_sandbox:enable
execute as @e[x=0,type=armor_stand,tag=Selection] if score @s[tag=sandboxEnabled,tag=switchGamemodes] SetGamemode = @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run function rr_sandbox:ifenabled
execute as @e[x=0,type=armor_stand,tag=Selection,tag=sandboxLast] run function rr_sandbox:iflast