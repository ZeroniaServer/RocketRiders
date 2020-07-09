execute as @e[tag=rr_powerups,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!powerupsEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_powerups,limit=1,type=armor_stand] gamemodeID run function rr_powerups:enable
execute as @e[tag=Selection,tag=powerupsEnabled,type=armor_stand] run function rr_powerups:ifenabled
execute as @e[tag=Selection,tag=powerupsLast,type=armor_stand] run function rr_powerups:iflast

#hotfix to remove onCapturePoint tag from players that can't even be on the capture point in gamemodes other than powerups
execute as @e[tag=Selection,tag=!powerupsEnabled,type=armor_stand] run tag @a[tag=onCapturePoint] remove onCapturePoint