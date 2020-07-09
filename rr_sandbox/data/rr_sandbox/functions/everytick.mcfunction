execute as @e[tag=rr_sandbox,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!sandboxEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_sandbox,limit=1,type=armor_stand] gamemodeID run function rr_sandbox:enable
execute as @e[tag=Selection,tag=sandboxEnabled,type=armor_stand] run function rr_sandbox:ifenabled
execute as @e[tag=Selection,tag=sandboxLast,type=armor_stand] run function rr_sandbox:iflast
