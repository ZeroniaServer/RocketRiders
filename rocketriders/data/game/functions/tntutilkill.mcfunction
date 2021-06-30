execute as @s at @s run tag @e[type=tnt,distance=..7] add UtilKilled
execute as @s at @s store result score @e[tag=UtilKilled,type=tnt,distance=..6] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @s at @s run tag @a[distance=..7] add UtilKilled
execute as @s at @s store result score @a[distance=..7] KillerUUID run scoreboard players get @s UUIDTracker