execute as @e[type=armor_stand,tag=rr_sandbox] run function gamemodes:updateid
execute if score @e[type=armor_stand,tag=Selection,tag=!sandboxEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run function rr_sandbox:enable
execute if score @e[type=armor_stand,tag=Selection,tag=sandboxEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run tag @e[type=armor_stand,tag=Selection,limit=1] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=sandboxEnabled] run function rr_sandbox:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=sandboxLast] run function rr_sandbox:iflast