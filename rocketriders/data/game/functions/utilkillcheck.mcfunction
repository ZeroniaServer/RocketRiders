execute as @s[tag=UtilKilled] run scoreboard players operation #current UUIDTracker = @s KillerUUID
execute as @a if score @s UUIDTracker = #current UUIDTracker run scoreboard players add @s kills 1
scoreboard players reset #current UUIDTracker

advancement revoke @s only game:utilkill