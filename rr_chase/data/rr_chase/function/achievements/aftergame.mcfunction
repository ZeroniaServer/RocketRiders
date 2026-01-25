##Any achievements to be given by the official end of the match.
execute unless predicate game:achievements_can_be_awarded run return 0

#| || || |_
scoreboard players add @a[x=0,predicate=custom:team/blue,tag=Winner] WinStreak 1
advancement grant @a[x=0,predicate=custom:team/blue,scores={WinStreak=10..},tag=Loser] only achievements:rr_challenges/loss
scoreboard players reset @a[x=0,predicate=custom:team/blue,tag=Loser] WinStreak

#Ground Bound
advancement grant @a[x=0,predicate=custom:team/blue,scores={jumps=..0},tag=Winner] only achievements:rr_challenges/groundbound

#Immortal
execute as @a[x=0,predicate=custom:team/blue] unless score @s match_statistic.deaths matches 1.. run advancement grant @s only achievements:rr_challenges/immortal

#Ballet Dancer
advancement grant @a[x=0,predicate=custom:team/blue,tag=!FailedBallet,tag=firstMoved] only achievements:rr_challenges/ballet

#Moonwalker
advancement grant @a[x=0,predicate=custom:team/blue,tag=!FailedMoon,tag=firstMoved] only achievements:rr_challenges/moonwalker

#Pacifist
execute as @a[x=0,tag=Winner] unless score @s match_statistic.kills matches 1.. run advancement grant @s only achievements:rr_challenges/pacifist
