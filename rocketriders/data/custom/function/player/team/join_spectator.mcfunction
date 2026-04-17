execute store success score $was_in_lobby var if predicate custom:team/lobby
function custom:entity/set_team/spectator
scoreboard players reset @s custom_team_color
function custom:player/update_text/self
scoreboard players set @s was_on_arena_team 3
execute if score $was_in_lobby var matches 1 store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]
