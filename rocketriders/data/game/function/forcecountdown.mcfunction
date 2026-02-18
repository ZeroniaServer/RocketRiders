##Operator function for forcing a countdown to begin
execute unless predicate game:phase/staging/queue run return run tellraw @s {color:"red",text:"You can only run this when settings are confirmed and a match has not started yet"}

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add forceCountdown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Countdown
