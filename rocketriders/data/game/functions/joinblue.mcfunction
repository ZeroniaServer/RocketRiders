tag @s add JoinBlue
execute as @e[tag=Selection] run function everytick:team_count
execute as @e[tag=Selection] if score @s origBCount < @s bluesCount run scoreboard players operation @s origBCount = @s bluesCount