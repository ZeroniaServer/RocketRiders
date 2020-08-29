#Cancel Yellow
function game:cancelyellow

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