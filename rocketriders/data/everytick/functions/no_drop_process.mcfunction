##Processes individual items for the purpose of preventing item dropping
##Thanks to Cloud Wolf for the tip!
data modify entity @s[tag=!processed] Owner set from entity @s Thrower
data merge entity @s[tag=!processed] {PickupDelay:0s}
execute store result score @s[tag=!processed] playerUUID run data get entity @s Thrower[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @a[team=!Spectator,predicate=custom:matches_uuid] at @a[team=!Spectator,predicate=custom:matches_uuid,limit=1] run tp @s ~ ~ ~
scoreboard players reset $tempuuid playerUUID
tag @s[tag=!processed] add processed