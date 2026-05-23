function custom:entity/set_team/lobby
scoreboard players reset @s custom_team_color
function custom:player/update_text/self
scoreboard players reset @s left_game_while_team
execute store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]
