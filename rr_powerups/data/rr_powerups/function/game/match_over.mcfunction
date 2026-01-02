function rr_powerups:everytick/spawnables
execute as @e[x=0,type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
execute unless predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=101},tag=!BothWon] run function game:endstats
execute if predicate game:game_rules/disable_tying/on if entity @s[scores={endtimer=1},tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] bCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] yCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureBlue 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureYellow 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_powerups:capture_progress players none
execute if entity @s[scores={endtimer=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
