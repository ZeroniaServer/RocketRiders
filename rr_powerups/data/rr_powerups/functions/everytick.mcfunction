execute as @e[tag=rr_powerups] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!powerupsEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[tag=rr_powerups,limit=1] gamemodeID run function rr_powerups:enable
execute as @e[tag=Selection,tag=powerupsEnabled] run function rr_powerups:ifenabled
execute as @e[tag=Selection,tag=powerupsLast] run function rr_powerups:iflast

#hotfix to remove onCapturePoint tag from players that can't even be on the capture point in gamemodes other than powerups
execute as @e[tag=Selection,tag=!powerupsEnabled] run tag @a[tag=onCapturePoint] remove onCapturePoint