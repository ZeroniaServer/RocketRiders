execute unless score $pegasus_spawned match matches 1 if predicate game:match_components/winner_pegasus if predicate game:outcome/blue_won_only run function game:pegasus/place_blue
execute unless score $pegasus_spawned match matches 1 if predicate game:match_components/winner_pegasus if predicate game:outcome/blue_won_only run scoreboard players set $pegasus_spawned match 1

execute unless score $pegasus_spawned match matches 1 if predicate game:match_components/winner_pegasus if predicate game:outcome/yellow_won_only run function game:pegasus/place_yellow
execute unless score $pegasus_spawned match matches 1 if predicate game:match_components/winner_pegasus if predicate game:outcome/yellow_won_only run scoreboard players set $pegasus_spawned match 1

execute unless score $pegasus_spawned match matches 1 if predicate game:match_components/winner_pegasus if predicate game:outcome/both_won run function game:pegasus/place_blue
execute unless score $pegasus_spawned match matches 1 if predicate game:match_components/winner_pegasus if predicate game:outcome/both_won run function game:pegasus/place_yellow
execute unless score $pegasus_spawned match matches 1 if predicate game:match_components/winner_pegasus if predicate game:outcome/both_won run scoreboard players set $pegasus_spawned match 1
