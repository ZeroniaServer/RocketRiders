#commands
execute store result score @e[tag=Selection] yellowsCount run execute if entity @a[team=Yellow]

execute store result score @e[tag=Selection] bluesCount run execute if entity @a[team=Blue]

scoreboard players operation @e[tag=Selection] largerTeamCount = @e[tag=Selection] yellowsCount
scoreboard players operation @e[tag=Selection] largerTeamCount > @e[tag=Selection] bluesCount

scoreboard players operation @e[tag=Selection] smallerTeamCount = @e[tag=Selection] yellowsCount
scoreboard players operation @e[tag=Selection] smallerTeamCount < @e[tag=Selection] bluesCount

scoreboard players operation @e[tag=Selection] teamDiff = @e[tag=Selection] largerTeamCount
scoreboard players operation @e[tag=Selection] teamDiff -= @e[tag=Selection] smallerTeamCount

#teamDiff just shows how big of a difference there is between the two teams

execute as @e[tag=Selection] unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = @s yellowsCount run scoreboard players set @e[tag=Selection] largerTeam -1
execute as @e[tag=Selection] unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = @s bluesCount run scoreboard players set @e[tag=Selection] largerTeam 1
execute as @e[tag=Selection] if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @e[tag=Selection] largerTeam 0

execute as @e[tag=Selection] unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = @s yellowsCount run scoreboard players set @e[tag=Selection] smallerTeam -1
execute as @e[tag=Selection] unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = @s bluesCount run scoreboard players set @e[tag=Selection] smallerTeam 1
execute as @e[tag=Selection] if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @e[tag=Selection] smallerTeam 0

#KEY for smallerTeam/largerTeam:
#-1 = yellow team is smaller/larger
# 0 = neither team is smaller/larger
# 1 = blue team is smaller/larger
