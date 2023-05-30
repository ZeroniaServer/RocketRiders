execute as @e[predicate=custom:indimension,type=armor_stand,tag=rr_powerups] run function gamemodes:updateid
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] if score @s[tag=!powerupsEnabled,tag=switchGamemodes] SetGamemode = @e[predicate=custom:indimension,type=armor_stand,tag=rr_powerups,limit=1] gamemodeID run function rr_powerups:enable
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] if score @s[tag=powerupsEnabled,tag=switchGamemodes] SetGamemode = @e[predicate=custom:indimension,type=armor_stand,tag=rr_powerups,limit=1] gamemodeID run tag @s remove switchGamemodes
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=powerupsEnabled] run function rr_powerups:ifenabled
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=powerupsLast] run function rr_powerups:iflast

#hotfix to remove tags from players in gamemodes other than powerups
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!powerupsEnabled] run tag @a[predicate=custom:indimension,tag=onCapturePoint] remove onCapturePoint
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!powerupsEnabled] run tag @a[predicate=custom:indimension,tag=Infinity] remove Infinity

#hotfix to kill bees in other modes without bees
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!powerupsEnabled,tag=!hasBees] if entity @e[predicate=custom:indimension,type=bee] run kill @e[predicate=custom:indimension,type=bee]