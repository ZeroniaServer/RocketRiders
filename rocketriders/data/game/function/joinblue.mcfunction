##Utility function for joining Blue team
tag @s add JoinBlue
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function everytick:team_count
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s origBCount < @s bluesCount run scoreboard players operation @s origBCount = @s bluesCount