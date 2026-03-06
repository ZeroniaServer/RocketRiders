## Generate a well-worded sentence indicating how many more players are required for each team.
# If wait_for_sufficient_players is off (RR0), expect only one player to join
execute unless predicate rr:wait_for_sufficient_players unless predicate game:match_components/one_team run bossbar set rr:startgame name ["Waiting for at least one player to join any team..."]
execute unless predicate rr:wait_for_sufficient_players if predicate game:match_components/one_team run bossbar set rr:startgame name ["Waiting for at least one player to join..."]
execute unless predicate rr:wait_for_sufficient_players run bossbar set rr:startgame max 1
execute unless predicate rr:wait_for_sufficient_players run bossbar set rr:startgame value 0
execute unless predicate rr:wait_for_sufficient_players run return run bossbar set rr:startgame color white

# calculate bossbar fill amount
scoreboard players operation $min_players var = $min_players_per_team match_components
execute unless predicate game:match_components/one_team run scoreboard players operation $min_players var += $min_players_per_team match_components
execute if score $min_players var matches ..0 run scoreboard players set $min_players var 1
execute store result bossbar rr:startgame max run scoreboard players get $min_players var
execute store result bossbar rr:startgame value run scoreboard players get $playing_teams_count global

# calculate remaining players required
execute unless predicate game:match_components/one_team run scoreboard players operation $missing_blue_players var = $min_players_per_team match_components
execute unless predicate game:match_components/one_team run scoreboard players operation $missing_yellow_players var = $min_players_per_team match_components
execute if predicate game:match_components/one_team run scoreboard players operation $missing_blue_players var = $min_players var
execute if predicate game:match_components/one_team run scoreboard players set $missing_yellow_players var 0
scoreboard players operation $missing_blue_players var -= $blue_team_count global
scoreboard players operation $missing_yellow_players var -= $yellow_team_count global

# prepare filler words for nice grammar/clarity
execute if score $max_players_per_team global > $min_players_per_team match_components run scoreboard players display numberformat $at_least var fixed " at least"
execute unless score $max_players_per_team global > $min_players_per_team match_components run scoreboard players display numberformat $at_least var fixed ""

execute unless score $blue_team_count global matches 0 run scoreboard players display numberformat $blue_more var fixed " more"
execute if score $blue_team_count global matches 0 run scoreboard players display numberformat $blue_more var fixed ""
execute unless score $missing_blue_players var matches 1 run scoreboard players display numberformat $blue_missing_plural var fixed "players"
execute if score $missing_blue_players var matches 1 run scoreboard players display numberformat $blue_missing_plural var fixed "player"

execute unless score $yellow_team_count global matches 0 run scoreboard players display numberformat $yellow_more var fixed " more"
execute if score $yellow_team_count global matches 0 run scoreboard players display numberformat $yellow_more var fixed ""
execute unless score $missing_yellow_players var matches 1 run scoreboard players display numberformat $yellow_missing_plural var fixed "players"
execute if score $missing_yellow_players var matches 1 run scoreboard players display numberformat $yellow_missing_plural var fixed "player"

## One team
execute if predicate game:match_components/one_team run bossbar set rr:startgame name ["Waiting for",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,score:{name:"$missing_blue_players",objective:"var"}},{score:{name:"$blue_more",objective:"var"}}," ",{score:{name:"$blue_missing_plural",objective:"var"}},"..."]
execute if predicate game:match_components/one_team if predicate game:match_components/custom_team_colors run return run bossbar set rr:startgame color white
execute if predicate game:match_components/one_team if predicate game:match_components/red_for_blue run return run bossbar set rr:startgame color red
execute if predicate game:match_components/one_team run return run bossbar set rr:startgame color blue

## Two teams
# Both are empty
execute if predicate game:teams/playing_teams_are_empty if score $min_players_per_team match_components matches 1.. run bossbar set rr:startgame name ["Waiting for",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,score:{name:"$missing_blue_players",objective:"var"}}," ",{score:{name:"$blue_missing_plural",objective:"var"}}, " in each team..."]
execute if predicate game:teams/playing_teams_are_empty unless score $min_players_per_team match_components matches 1.. run bossbar set rr:startgame name ["Waiting for at least one player to join any team..."]
execute if predicate game:teams/playing_teams_are_empty run return run bossbar set rr:startgame color white

# Neither is sufficient
execute unless predicate game:teams/blue_is_sufficient unless predicate game:teams/yellow_is_sufficient run bossbar set rr:startgame name ["Waiting for",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,score:{name:"$missing_yellow_players",objective:"var"}},{score:{name:"$yellow_more",objective:"var"}}," ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," ",{score:{name:"$yellow_missing_plural",objective:"var"}}," and",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,score:{name:"$missing_blue_players",objective:"var"}},{score:{name:"$blue_more",objective:"var"}}," ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," ",{score:{name:"$blue_missing_plural",objective:"var"}},"..."]
execute unless predicate game:teams/blue_is_sufficient unless predicate game:teams/yellow_is_sufficient run return run bossbar set rr:startgame color white

# Blue is insufficient
execute unless predicate game:teams/blue_is_sufficient unless score $missing_blue_players var matches 1 run bossbar set rr:startgame name ["Waiting for",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,score:{name:"$missing_blue_players",objective:"var"}},{score:{name:"$blue_more",objective:"var"}}," ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," players..."]
execute unless predicate game:teams/blue_is_sufficient if score $missing_blue_players var matches 1 unless score $max_players_per_team global matches 1 run bossbar set rr:startgame name ["Waiting for",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,text:"1"},{score:{name:"$blue_more",objective:"var"}}," ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," player..."]
execute unless predicate game:teams/blue_is_sufficient if score $missing_blue_players var matches 1 if score $max_players_per_team global matches 1 run bossbar set rr:startgame name ["Waiting for a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," player..."]
execute unless predicate game:teams/blue_is_sufficient run return run bossbar set rr:startgame color yellow

# Yellow is insufficient
execute unless predicate game:teams/yellow_is_sufficient unless score $missing_yellow_players var matches 1 run bossbar set rr:startgame name ["Waiting for",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,score:{name:"$missing_yellow_players",objective:"var"}},{score:{name:"$yellow_more",objective:"var"}}," ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," players..."]
execute unless predicate game:teams/yellow_is_sufficient if score $missing_yellow_players var matches 1 unless score $max_players_per_team global matches 1 run bossbar set rr:startgame name ["Waiting for",{score:{name:"$at_least",objective:"var"}}," ",{bold:true,text:"1"},{score:{name:"$yellow_more",objective:"var"}}," ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," player..."]
execute unless predicate game:teams/yellow_is_sufficient if score $missing_yellow_players var matches 1 if score $max_players_per_team global matches 1 run bossbar set rr:startgame name ["Waiting for a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," player..."]
execute unless predicate game:teams/yellow_is_sufficient if predicate game:match_components/red_for_blue run return run bossbar set rr:startgame color red
execute unless predicate game:teams/yellow_is_sufficient run return run bossbar set rr:startgame color blue
