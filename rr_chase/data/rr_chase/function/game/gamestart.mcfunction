#Give arrows on join (disabled? intentional?)
#execute if predicate game:phase/match/play as @a[x=0,tag=JoinBlue] run function items:util/givearrows

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
