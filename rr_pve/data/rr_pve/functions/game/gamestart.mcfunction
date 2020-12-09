#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[tag=rr_pve,type=armor_stand,limit=1] PlayerCap 2
scoreboard players operation @e[tag=rr_pve,type=armor_stand,limit=1] PlayerCap *= @s PlayerCap
execute if score @s bluesCount >= @e[tag=rr_pve,type=armor_stand,limit=1] PlayerCap run tag @s add BlueFull
execute as @s[tag=!BlueFull] as @e[tag=bluejoinpad,tag=!CancelJoin,type=area_effect_cloud] at @s run particle falling_dust minecraft:blue_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @s[tag=BlueFull,tag=EditedSettings] as @e[tag=bluejoinpad,tag=!CancelJoin,type=area_effect_cloud] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a

#Bots in Pregame Queue
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_yellow
execute as @s[scores={count=1}] run scoreboard players set @e[tag=Bot,type=armor_stand] botarrowitems 20

#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Bossbar
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame value 0
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame color white

#Countdown
execute as @s[tag=EditedSettings] if entity @a[team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[scores={count=590..600},tag=!GameEnd] run kill @e[tag=Bot,type=armor_stand]
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted