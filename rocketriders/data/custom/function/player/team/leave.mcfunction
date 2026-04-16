execute store success score $was_in_lobby var if predicate custom:team/lobby
team leave @s
scoreboard players reset @s custom_team_color
function custom:player/update_text/self
scoreboard players reset @s was_on_arena_team
execute if score $was_in_lobby var matches 1 store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]
