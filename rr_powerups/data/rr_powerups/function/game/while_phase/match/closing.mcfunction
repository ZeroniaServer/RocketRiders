function rr_powerups:everytick/spawnables
execute as @e[x=0,type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] bCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] yCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureBlue 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureYellow 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
execute if score $closing_timer global matches 1.. run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
