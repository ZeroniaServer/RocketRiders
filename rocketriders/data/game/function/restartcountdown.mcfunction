##Operator function for restarting the countdown at any point
##Does not work if the countdown has been forced
tag @s[tag=!forceCountdown] remove Countdown
scoreboard players set @s[tag=!forceCountdown] count 0
execute if entity @s[tag=!forceCountdown] run bossbar set rr:startgame max 30