##Operator function for forcing a game to start
function game:forcecountdown
tag @e[type=armor_stand,tag=Selection] add forceCountdown
scoreboard players set @e[type=armor_stand,tag=Selection] count 597