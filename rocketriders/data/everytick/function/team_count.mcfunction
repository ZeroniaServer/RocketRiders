##Utility function for counting players on teams
execute store result score $yellow_team_count global if entity @a[x=0,predicate=custom:team/yellow]
execute store result score $blue_team_count global if entity @a[x=0,predicate=custom:team/blue]

execute if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if score $playing_teams_count global matches 1.. if predicate game:phase/match unless predicate game:phase/match/over run function lobby:update_nav_book
scoreboard players operation $playing_teams_count global = $blue_team_count global
scoreboard players operation $playing_teams_count global += $yellow_team_count global
