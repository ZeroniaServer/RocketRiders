##Operator function for restarting the countdown at any point
##Does not work if the countdown has been forced

tag @s[tag=!forceCountdown] remove Countdown
scoreboard players set @s[tag=!forceCountdown] count 0