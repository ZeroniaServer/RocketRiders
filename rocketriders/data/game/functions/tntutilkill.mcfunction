#Used for utilkill system
tag @e[type=tnt,distance=..7] add UtilKilled
execute store result score @e[type=tnt,tag=UtilKilled,distance=..6] UUIDTracker run scoreboard players get @s UUIDTracker
function game:nametnt
tag @a[predicate=custom:indimension,team=!Spectator,distance=..7] add UtilKilled
execute store result score @a[predicate=custom:indimension,team=!Spectator,distance=..7] KillerUUID run scoreboard players get @s UUIDTracker