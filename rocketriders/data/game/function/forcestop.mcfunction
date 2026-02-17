##Operator function for forcing a match to end
function game:set_phase/match.over
clear @a[x=0,predicate=custom:team/any_playing_team] *
effect clear @a[x=0,predicate=custom:team/any_playing_team]
dialog clear @a[x=0]
scoreboard players reset $1v1_duel_time_out_period global
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
execute if predicate game:phase/match/over run scoreboard players set @e[limit=1,x=0,type=armor_stand,tag=Selection] endtimer 568
schedule clear lobby:cancelsettings/counter