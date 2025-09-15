execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] run return fail

scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
execute as @e[x=0,type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] CmdData
