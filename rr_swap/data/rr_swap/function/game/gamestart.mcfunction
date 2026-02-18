#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 if predicate rr_swap:blue_team_is_dark run function rr_swap:items/givefirstdarkblue
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 if predicate rr_swap:blue_team_is_light run function rr_swap:items/givefirstlightblue

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue/waiting if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run function game:set_phase/staging.queue.countdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue/countdown unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue/countdown unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue/waiting if entity @a[x=0,predicate=custom:team/any_playing_team] run function game:set_phase/staging.queue.countdown
execute unless predicate rr:wait_for_sufficient_players if predicate game:phase/staging/queue/countdown unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute if predicate game:phase/staging/queue/countdown if score @s count matches 600 run function game:start_match
