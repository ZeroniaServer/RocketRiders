##Loops through and tries to teleport item to correct player
tag @p[team=!Spectator,tag=!itemChecked] add itemChecking
execute if score @s playerUUID = @p[tag=itemChecking] playerUUID run tag @s add itemFound
execute if score @s playerUUID = @p[tag=itemChecking] playerUUID at @p[tag=itemChecking] run tp ~ ~ ~
tag @p[tag=itemChecking] add itemChecked
tag @a[tag=itemChecked] remove itemChecking
execute unless entity @s[tag=itemFound] if entity @a[team=!Spectator,tag=!itemChecked] run function everytick:no_drop_loop