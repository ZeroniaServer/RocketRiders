##Utility function for joining Yellow team
tag @s add JoinYellow
team join Yellow @s
execute as @e[type=armor_stand,tag=Selection] run function everytick:team_count
execute as @e[type=armor_stand,tag=Selection] if score @s origYCount < @s yellowsCount run scoreboard players operation @s origYCount = @s yellowsCount