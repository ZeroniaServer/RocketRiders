##########################################
## TEAM BALANCE: Ensures that team size ##
## differences are minimal for fairness ##
##########################################

##Identifies which team is larger to calculate the team difference
function everytick:team_count

scoreboard players operation @s largerTeamCount = @s yellowsCount
scoreboard players operation @s largerTeamCount > @s bluesCount

scoreboard players operation @s smallerTeamCount = @s yellowsCount
scoreboard players operation @s smallerTeamCount < @s bluesCount

#teamDiff just shows how big of a difference there is between the two teams
scoreboard players operation @s teamDiff = @s largerTeamCount
scoreboard players operation @s teamDiff -= @s smallerTeamCount

##KEY for smallerTeam/largerTeam:
## -1 = yellow team is smaller/larger
##  0 = neither team is smaller/larger
##  1 = blue team is smaller/larger

execute unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = @s yellowsCount run scoreboard players set @s largerTeam -1
execute unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = @s bluesCount run scoreboard players set @s largerTeam 1
execute if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @s largerTeam 0

execute unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = @s yellowsCount run scoreboard players set @s smallerTeam -1
execute unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = @s bluesCount run scoreboard players set @s smallerTeam 1
execute if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @s smallerTeam 0

##Checking whether teams are full
execute if entity @s[tag=!BlueCapOverride] run tag @s remove BlueFull
execute if entity @s[tag=!BlueCapOverride] if score @s bluesCount >= @s PlayerCap run tag @s add BlueFull
execute if entity @s[tag=!YellowCapOverride] run tag @s remove YellowFull
execute if entity @s[tag=!YellowCapOverride] if score @s yellowsCount >= @s PlayerCap run tag @s add YellowFull