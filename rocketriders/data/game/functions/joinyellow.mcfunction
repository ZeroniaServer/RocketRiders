##Utility function for joining Yellow team
tag @s add JoinYellow
execute as @e[tag=Selection] run function everytick:team_count
execute as @e[tag=Selection] if score @s origYCount < @s yellowsCount run scoreboard players operation @s origYCount = @s yellowsCount