#Set kit to previous upon joining
execute as @a[x=0,tag=JoinBlue] run function rr_crusade:items/kit/upon_join
execute as @a[x=0,tag=JoinYellow] run function rr_crusade:items/kit/upon_join

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 run function rr_crusade:items/givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow
