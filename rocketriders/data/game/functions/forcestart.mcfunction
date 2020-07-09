##Operator function for forcing a game to start
function game:forcecountdown
tag @e[tag=Selection,type=armor_stand] add forceCountdown
scoreboard players set @e[tag=Selection,type=armor_stand] count 597