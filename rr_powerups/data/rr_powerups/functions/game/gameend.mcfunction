clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
clear @a[team=Blue] #rr_powerups:clear
clear @a[team=Yellow] #rr_powerups:clear
execute as @s[scores={endtimer=1},tag=doTying,tag=!tyingOff] run schedule function game:endstats 80t append
execute as @s[scores={endtimer=1},tag=!doTying] run function game:endstats
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] bCapturedTime 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] yCapturedTime 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] captureBlue 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] captureYellow 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] capturePoint 0
tag @a remove Infinity
tag @a remove HoldingSlapFish
execute as @s[scores={endtimer=1..}] run bossbar set rr_powerups:capture_progress players none
execute as @s[scores={endtimer=1..}] run scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] capturePoint 0
tag @s add powerupsLast