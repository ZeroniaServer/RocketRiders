##Utility function for joining Blue team
tag @s add JoinBlue
team join Blue @s
execute as @e[tag=Selection,type=armor_stand] run function everytick:team_count
execute as @e[tag=Selection,type=armor_stand] if score @s origBCount < @s bluesCount run scoreboard players operation @s origBCount = @s bluesCount