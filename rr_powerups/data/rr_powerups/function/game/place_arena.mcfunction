execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] run return fail

execute unless entity @e[x=0,type=marker,tag=captureMiddle,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["captureMiddle"]}

scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
execute as @e[x=0,type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] CmdData
