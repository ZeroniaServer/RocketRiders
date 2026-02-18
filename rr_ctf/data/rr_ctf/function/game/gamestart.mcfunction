#Score Removal
scoreboard players reset @a[x=0,tag=JoinBlue] FlagsCaptured
scoreboard players reset @a[x=0,tag=JoinYellow] FlagsCaptured

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @s[tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @s[tag=Countdown] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @a[x=0,predicate=custom:team/blue] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue if entity @s[tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute if predicate game:phase/staging run scoreboard players set @s canopyStreak 0
execute if predicate game:phase/staging run scoreboard players reset @a[x=0] MineWhiteGlass
execute if predicate game:phase/staging run scoreboard players reset @a[x=0] MinePurpleGlass
execute if predicate game:phase/staging run scoreboard players reset @a[x=0] FlagsCaptured
execute if score @s count matches 600 run summon marker 38 63 -66 {Tags:["airDetectBlue"]}
execute if score @s count matches 600 run summon marker 38 63 66 {Tags:["airDetectYellow"]}
execute unless predicate game:phase/match/over if score @s count matches 600 run function game:start_match
