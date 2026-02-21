##Utility function for counting players on teams
execute store result score $yellow_team_count global if entity @a[x=0,predicate=custom:team/yellow]
execute store result score $blue_team_count global if entity @a[x=0,predicate=custom:team/blue]

scoreboard players operation $playing_teams_count global = $blue_team_count global
scoreboard players operation $playing_teams_count global += $yellow_team_count global
