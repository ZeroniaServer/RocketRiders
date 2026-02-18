#Cancel Yellow
function game:cancelyellow

#Team Fullness
function everytick:team_count
tag @s remove BlueFull
scoreboard players set @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap 2
scoreboard players operation @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap *= @s PlayerCap
execute if score $blue_team_count global >= @e[x=0,type=armor_stand,tag=rr_chase,limit=1] PlayerCap run tag @s add BlueFull
execute if predicate game:joinable_match_phase if entity @s[tag=BlueFull] run tag @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] add join_pad.show_barrier

#Give arrows on join (disabled? intentional?)
#execute if predicate game:phase/match/play as @a[x=0,tag=JoinBlue] run function items:util/givearrows

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue

#Bossbar
execute if predicate game:phase/staging/queue if entity @s[tag=!Countdown] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if predicate game:phase/staging/queue if entity @s[tag=!Countdown] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame value 0
execute if predicate game:phase/staging/queue if entity @s[tag=!Countdown] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 0 run bossbar set rr:startgame color white
execute if predicate game:phase/staging/queue if entity @s[tag=!Countdown] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 1 run bossbar set rr:startgame name ["",{"text":"Awaiting more players...","color":"white"}]
execute if predicate game:phase/staging/queue if entity @s[tag=!Countdown] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 1 run bossbar set rr:startgame value 15
execute if predicate game:phase/staging/queue if entity @s[tag=!Countdown] unless entity @s[scores={endtimer=1..}] if score $blue_team_count global matches 1 run bossbar set rr:startgame color green

#Countdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if score $blue_team_count global matches 2.. run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @s[tag=Countdown] if score $blue_team_count global matches 0..1 run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if score $blue_team_count global matches 1.. run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @s[tag=Countdown] if score $blue_team_count global matches 0 run function game:restartcountdown

execute unless predicate game:phase/match/over if score @s count matches 600 run function game:start_match
execute unless predicate game:phase/match/over if score @s count matches 600 run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute unless predicate game:phase/match/over if score @s count matches 600 run tag @a[x=0,predicate=custom:team/blue] add onBlue
execute if score @s count matches 600 run summon marker 38 63 -66 {Tags:["airDetect"]}
execute unless predicate game:phase/match/over if score @s count matches 600 as @a[x=0,predicate=custom:team/blue] run tag @s remove fullOffhand