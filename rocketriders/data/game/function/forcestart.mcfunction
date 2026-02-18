##Operator function for forcing a match to start
execute unless predicate game:phase/staging/queue run return run tellraw @s {color:"red",text:"You can only run this when settings are confirmed and a match has not started yet"}

function game:forcecountdown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add forceCountdown
scoreboard players set @e[limit=1,x=0,type=armor_stand,tag=Selection] count 597
