#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap 2
scoreboard players operation @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap *= @s PlayerCap
execute if score $blue_team_count global >= @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap run tag @s add BlueFull
execute if entity @s[tag=BlueFull,tag=EditedSettings] run tag @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] add join_pad.show_barrier

#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute if predicate game:match_in_play as @a[x=0,tag=JoinBlue] run function items:util/givearrows

#Notify Join
execute if predicate game:match_in_play unless predicate rr:is_cubekrowd as @a[x=0,tag=JoinBlue] run function rr_chase:chasegear/sabermsg
execute if predicate game:match_in_play if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"red","italic":true},{"text":"/leave ","color":"dark_red","bold":true,"italic":false},{"text":"to leave the match.","color":"red","italic":true}]

#Give first item to anyone who joins within 1st second
execute if predicate game:match_in_play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue

#Bossbar
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame value 0
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame color white
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 1 run bossbar set rr:startgame name ["",{"text":"Awaiting more players...","color":"white"}]
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 1 run bossbar set rr:startgame value 15
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 1 run bossbar set rr:startgame color green

#Countdown
execute if predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if score $blue_team_count global matches 2.. run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] if score $blue_team_count global matches 0..1 run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if score $blue_team_count global matches 1.. run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] if score $blue_team_count global matches 0 run function game:restartcountdown

execute if score @s count matches 600 unless predicate rr:is_cubekrowd as @a[x=0,team=Blue] run function rr_chase:chasegear/sabermsg
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"red","italic":true},{"text":"/leave ","color":"dark_red","bold":true,"italic":false},{"text":"to leave the match.","color":"red","italic":true}]
execute unless predicate game:match_over if score @s count matches 600 run scoreboard players set $match_in_play global 1
execute unless predicate game:match_over if score @s count matches 600 run tp @a[x=0,team=Blue] 12 64 -66 0 0
execute unless predicate game:match_over if score @s count matches 600 run tag @a[x=0,team=Blue] add onBlue
execute if score @s count matches 600 run summon marker 38 63 -66 {Tags:["airDetect"]}
execute unless predicate game:match_over if score @s count matches 600 as @a[x=0,team=Blue] run tag @s remove fullOffhand