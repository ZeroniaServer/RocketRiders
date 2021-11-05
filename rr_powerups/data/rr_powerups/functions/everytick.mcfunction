execute as @e[type=armor_stand,tag=rr_powerups] run function gamemodes:updateid
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=!powerupsEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_powerups,limit=1] gamemodeID run function rr_powerups:enable
execute as @e[type=armor_stand,tag=Selection] if score @s[tag=powerupsEnabled,tag=switchGamemodes] SetGamemode = @e[type=armor_stand,tag=rr_powerups,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection,tag=powerupsEnabled] run function rr_powerups:ifenabled
execute as @e[type=armor_stand,tag=Selection,tag=powerupsLast] run function rr_powerups:iflast

#hotfix to remove onCapturePoint tag from players that can't even be on the capture point in gamemodes other than powerups
execute as @e[type=armor_stand,tag=Selection,tag=!powerupsEnabled] run tag @a[tag=onCapturePoint] remove onCapturePoint

#hotfix to kill bees in other modes without bees
execute as @e[type=armor_stand,tag=Selection,tag=!powerupsEnabled,tag=!hasBees] if entity @e[type=bee] run kill @e[type=bee]