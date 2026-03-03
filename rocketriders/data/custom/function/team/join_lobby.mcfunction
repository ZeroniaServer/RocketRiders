team join rocketriders.sort_200.lobby
scoreboard players reset @s custom_team_color
function custom:update_player_text/self
scoreboard players reset @s was_on_arena_team
execute store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]
