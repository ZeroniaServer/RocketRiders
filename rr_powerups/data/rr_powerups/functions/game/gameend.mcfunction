execute as @s[scores={endtimer=1..}] run bossbar set rr_powerups:blue_capture_progress players none
execute as @s[scores={endtimer=1..}] run bossbar set rr_powerups:yellow_capture_progress players none
execute as @s[scores={endtimer=1..}] run scoreboard players set @e[tag=captureMiddle] capturePoint 0
tag @e[tag=Selection] add powerupsLast