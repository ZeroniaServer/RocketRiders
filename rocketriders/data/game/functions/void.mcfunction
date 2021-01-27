##############################################
## VOID: How players who fall into the void ##
## are handled by a quick instadeath system ##
##############################################

##Record death statistics for non-Spectator players
scoreboard players add @s[tag=!crosser] FellVoid 1

##Become one with the void
kill @s

##Spectators look down
tp @s[team=Spectator] 12 100 0.5 90 90