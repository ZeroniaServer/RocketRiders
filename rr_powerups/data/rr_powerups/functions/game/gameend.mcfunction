clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
clear @a[team=Blue] #rr_powerups:clear
clear @a[team=Yellow] #rr_powerups:clear
scoreboard players set @e[tag=captureMiddle] bCapturedTime 0
scoreboard players set @e[tag=captureMiddle] yCapturedTime 0
scoreboard players set @e[tag=captureMiddle] captureBlue 0
scoreboard players set @e[tag=captureMiddle] captureYellow 0
scoreboard players set @e[tag=captureMiddle] capturePoint 0
tag @a remove Infinity
execute as @s[scores={endtimer=1..}] run bossbar set rr_powerups:capture_progress players none
execute as @s[scores={endtimer=1..}] run scoreboard players set @e[tag=captureMiddle] capturePoint 0
tag @s add powerupsLast