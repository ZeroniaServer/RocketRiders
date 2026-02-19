##Operator function for restarting the countdown at any point
##Does not work if the countdown has been forced
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=forceCountdown] run return run tellraw @s {color:"red",text:"You cannot restart a forced countdown."}
execute unless predicate game:phase/staging/queue/countdown run return run tellraw @s {color:"red",text:"There is no countdown to restart."}

scoreboard players set @s count 0
bossbar set rr:startgame max 30
