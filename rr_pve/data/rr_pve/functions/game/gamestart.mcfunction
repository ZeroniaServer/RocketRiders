#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[type=armor_stand,tag=rr_pve,limit=1] PlayerCap 2
scoreboard players operation @e[type=armor_stand,tag=rr_pve,limit=1] PlayerCap *= @s PlayerCap
execute if score @s bluesCount >= @e[type=armor_stand,tag=rr_pve,limit=1] PlayerCap run tag @s add BlueFull
execute if score $dust CmdData matches 1 if entity @s[tag=!BlueFull] as @e[type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle falling_dust minecraft:blue_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[predicate=!custom:belowroof]
execute if score $barriers CmdData matches 1 if entity @s[tag=BlueFull,tag=EditedSettings] as @e[type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle block_marker barrier ~ ~1 ~ 0 0 0 0 1 force @a[predicate=!custom:belowroof]

#Bots in Pregame Queue
execute unless entity @e[type=armor_stand,tag=Bot] if entity @s[tag=Countdown] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_five_yellow
execute if entity @s[tag=Countdown] run scoreboard players set @e[type=armor_stand,tag=Bot] botarrowitems 20
execute if entity @s[tag=Countdown] run scoreboard players set @e[type=armor_stand,tag=Bot] BotHP 3

#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:givegear

#Give first item to anyone who joins within 1st second
execute if entity @s[tag=GameStarted,scores={gametime=3..20}] run function items:givefirst

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Bossbar
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame value 0
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score @s bluesCount matches 0 run bossbar set rr:startgame color white

#Countdown
execute if entity @s[tag=EditedSettings] if entity @a[team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[team=Blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings] unless entity @a[team=Blue] run kill @e[type=armor_stand,tag=Bot]
execute if entity @s[scores={count=590..600},tag=!GameEnd] run kill @e[type=armor_stand,tag=Bot]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted