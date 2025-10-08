function rr_powerups:everytick/spawnables
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] #custom:clear
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *[custom_data~{id:"nova_rocket"}]
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *[custom_data~{id:"booster_rocket"}]
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] #rr_powerups:clear
execute as @e[x=0,type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
execute if entity @s[scores={endtimer=1}] as @a[x=0] run function custom:unequip_elytra
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] bCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] yCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureBlue 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureYellow 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
scoreboard players reset @a shooting_saber.infinity_time
scoreboard players reset @a shooting_saber.multishot_time
execute if entity @s[scores={endtimer=1}] as @a[x=0] run function custom:update_inventory/shooting_saber
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_powerups:capture_progress players none
execute if entity @s[scores={endtimer=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
