#Used for utilkill system
execute if entity @s[tag=UtilKilled] run scoreboard players operation #current UUIDTracker = @s KillerUUID
execute if entity @s[tag=UtilKilled] run scoreboard players operation #own UUIDTracker = @s UUIDTracker
execute if entity @e[type=armor_stand,tag=Selection,tag=!onlyBlue] if entity @s[team=Yellow] as @a[predicate=custom:indimension,team=Blue] if score @s UUIDTracker = #current UUIDTracker run scoreboard players add @s kills 1
execute if entity @e[type=armor_stand,tag=Selection,tag=!onlyBlue] if entity @s[team=Blue] as @a[predicate=custom:indimension,team=Yellow] if score @s UUIDTracker = #current UUIDTracker run scoreboard players add @s kills 1
execute if entity @e[type=armor_stand,tag=Selection,tag=onlyBlue] as @a[predicate=custom:indimension,team=Blue] if score @s UUIDTracker = #current UUIDTracker unless score @s UUIDTracker = #own UUIDTracker run scoreboard players add @s kills 1
scoreboard players reset #current UUIDTracker
scoreboard players reset #own UUIDTracker
advancement revoke @s only game:utilkill