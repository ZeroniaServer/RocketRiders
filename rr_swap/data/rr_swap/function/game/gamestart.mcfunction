#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 if predicate rr_swap:blue_team_is_dark run function rr_swap:items/givefirstdarkblue
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 if predicate rr_swap:blue_team_is_light run function rr_swap:items/givefirstlightblue

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow
