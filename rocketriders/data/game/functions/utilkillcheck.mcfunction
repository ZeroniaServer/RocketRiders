#Used for utilkill system
execute as @s[tag=UtilKilled] run scoreboard players operation #current UUIDTracker = @s KillerUUID
execute as @s[tag=UtilKilled] run scoreboard players operation #own UUIDTracker = @s UUIDTracker
execute if entity @e[tag=Selection,tag=!onlyBlue,type=armor_stand] as @s[team=Yellow] as @a[team=Blue] if score @s UUIDTracker = #current UUIDTracker run scoreboard players add @s kills 1
execute if entity @e[tag=Selection,tag=!onlyBlue,type=armor_stand] as @s[team=Blue] as @a[team=Yellow] if score @s UUIDTracker = #current UUIDTracker run scoreboard players add @s kills 1
execute if entity @e[tag=Selection,tag=onlyBlue,type=armor_stand] as @a[team=Blue] if score @s UUIDTracker = #current UUIDTracker unless score @s UUIDTracker = #own UUIDTracker run scoreboard players add @s kills 1
scoreboard players reset #current UUIDTracker
scoreboard players reset #own UUIDTracker
advancement revoke @s only game:utilkill