##Operator function for forcing a game to end
scoreboard players set $game_ended global 1
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s *[custom_data~{id:"nova_rocket"}]
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s
scoreboard players reset $game_started global
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Countdown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove forceCountdown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove bossbarOverride
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove gaveFirstItem
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] count 0
scoreboard players set $game_duration global 0
worldborder warning distance 0
execute as @a[x=0] run function everytick:score_reset
tag @e[x=0,type=armor_stand,tag=EditedSettings] remove EditedSettings
tag @e[x=0,type=marker,tag=join_pad.yellow] add CancelJoin
tag @e[x=0,type=marker,tag=join_pad.blue] add CancelJoin
tag @e[x=0,type=marker,tag=join_pad.spectator] add CancelJoin
bossbar set rr:startgame max 30
tag @a[x=0] remove deathchamp
tag @a[x=0] remove flagschamp
tag @a[x=0] remove killschamp
tag @a[x=0] remove spawnchamp
execute if predicate game:game_ended run scoreboard players set @e[limit=1,x=0,type=armor_stand,tag=Selection] endtimer 568
setblock -57 203 78 air
scoreboard players set $mcancel CmdData 0
schedule clear lobby:cancelsettings/counter