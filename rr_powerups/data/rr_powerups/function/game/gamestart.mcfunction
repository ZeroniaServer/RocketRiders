#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $match_play_time global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
scoreboard players reset @s[scores={count=1..}] powerupcount
scoreboard players set @s[scores={count=1..}] PowerupDisplay 45
execute if entity @s[scores={count=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureYellow 0
execute if entity @s[scores={count=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureBlue 0
execute if entity @s[scores={count=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
