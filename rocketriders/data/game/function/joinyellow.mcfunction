##Utility function for joining Yellow team
tag @s add JoinYellow
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:team_count
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s origYCount < @s yellowsCount run scoreboard players operation @s origYCount = @s yellowsCount