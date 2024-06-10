##Kills thrown Saber
execute store result score $tempuuid playerUUID run data get entity @s Thrower[0]
execute if entity @a[x=0,predicate=custom:matches_uuid,tag=Infinity] run kill @s
scoreboard players reset $tempuuid playerUUID