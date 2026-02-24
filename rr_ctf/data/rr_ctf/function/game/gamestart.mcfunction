#Score Removal
scoreboard players reset @a[x=0,tag=JoinBlue] FlagsCaptured
scoreboard players reset @a[x=0,tag=JoinYellow] FlagsCaptured

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $match_play_time global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate game:phase/staging run scoreboard players set @s canopyStreak 0
execute if predicate game:phase/staging run scoreboard players reset @a[x=0] MineWhiteGlass
execute if predicate game:phase/staging run scoreboard players reset @a[x=0] MinePurpleGlass
execute if predicate game:phase/staging run scoreboard players reset @a[x=0] FlagsCaptured
