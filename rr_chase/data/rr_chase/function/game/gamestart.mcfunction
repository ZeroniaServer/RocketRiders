#Give arrows on join (disabled? intentional?)
#execute if predicate game:phase/match/play as @a[x=0,tag=JoinBlue] run function items:give_batch/arrow

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $play_time match_data matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow
