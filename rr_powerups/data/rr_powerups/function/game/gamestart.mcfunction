#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $match_play_time global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate game:phase/staging run scoreboard players reset @s powerupcount
execute if predicate game:phase/staging run scoreboard players set @s PowerupDisplay 45
execute if predicate game:phase/staging run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureYellow 0
execute if predicate game:phase/staging run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureBlue 0
execute if predicate game:phase/staging run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
