scoreboard players operation @s largerTeamCount = @s yellowsCount
scoreboard players operation @s largerTeamCount > @s bluesCount

scoreboard players operation @s smallerTeamCount = @s yellowsCount
scoreboard players operation @s smallerTeamCount < @s bluesCount

scoreboard players operation @s teamDiff = @s largerTeamCount
scoreboard players operation @s teamDiff -= @s smallerTeamCount

#teamDiff just shows how big of a difference there is between the two teams

execute unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = @s yellowsCount run scoreboard players set @s largerTeam -1
execute unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = @s bluesCount run scoreboard players set @s largerTeam 1
execute if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @s largerTeam 0

execute unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = @s yellowsCount run scoreboard players set @s smallerTeam -1
execute unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = @s bluesCount run scoreboard players set @s smallerTeam 1
execute if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @s smallerTeam 0

#KEY for smallerTeam/largerTeam:
#-1 = yellow team is smaller/larger
# 0 = neither team is smaller/larger
# 1 = blue team is smaller/larger