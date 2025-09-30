##########################################
## TEAM BALANCE: Ensures that team size ##
## differences are minimal for fairness ##
##########################################

##Identifies which team is larger to calculate the team difference
function everytick:team_count

scoreboard players operation @s largerTeamCount = $yellow_team_count global
scoreboard players operation @s largerTeamCount > $blue_team_count global

scoreboard players operation @s smallerTeamCount = $yellow_team_count global
scoreboard players operation @s smallerTeamCount < $blue_team_count global

#teamDiff just shows how big of a difference there is between the two teams
scoreboard players operation @s teamDiff = @s largerTeamCount
scoreboard players operation @s teamDiff -= @s smallerTeamCount

##KEY for smallerTeam/largerTeam:
## -1 = yellow team is smaller/larger
##  0 = neither team is smaller/larger
##  1 = blue team is smaller/larger

execute unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = $yellow_team_count global run scoreboard players set @s largerTeam -1
execute unless score @s largerTeamCount = @s smallerTeamCount if score @s largerTeamCount = $blue_team_count global run scoreboard players set @s largerTeam 1
execute if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @s largerTeam 0

execute unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = $yellow_team_count global run scoreboard players set @s smallerTeam -1
execute unless score @s largerTeamCount = @s smallerTeamCount if score @s smallerTeamCount = $blue_team_count global run scoreboard players set @s smallerTeam 1
execute if score @s largerTeamCount = @s smallerTeamCount run scoreboard players set @s smallerTeam 0

##Checking whether teams are full
execute if entity @s[tag=!BlueCapOverride] run tag @s remove BlueFull
execute if entity @s[tag=!BlueCapOverride] if score @s bluesCount >= @s PlayerCap run tag @s add BlueFull
execute if entity @s[tag=!YellowCapOverride] run tag @s remove YellowFull
execute if entity @s[tag=!YellowCapOverride] if score $yellow_team_count global >= @s PlayerCap run tag @s add YellowFull