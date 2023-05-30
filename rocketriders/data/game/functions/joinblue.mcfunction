##Utility function for joining Blue team
tag @s add JoinBlue
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function everytick:team_count
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] if score @s origBCount < @s bluesCount run scoreboard players operation @s origBCount = @s bluesCount