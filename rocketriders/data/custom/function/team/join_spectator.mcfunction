execute store success score $was_in_lobby var if predicate custom:team/lobby
team join rocketriders.sort_100.spectator
scoreboard players reset @s custom_team_color
function custom:update_player_text/self
scoreboard players set @s was_on_arena_team 3
execute if score $was_in_lobby var matches 1 store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]
