#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $match_play_time global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow
