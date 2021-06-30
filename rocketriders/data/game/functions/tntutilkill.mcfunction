#Used for utilkill system
tag @e[type=tnt,distance=..7] add UtilKilled
execute store result score @e[tag=UtilKilled,type=tnt,distance=..6] UUIDTracker run scoreboard players get @s UUIDTracker
function game:nametnt
tag @a[team=!Spectator,distance=..7] add UtilKilled
execute store result score @a[team=!Spectator,distance=..7] KillerUUID run scoreboard players get @s UUIDTracker