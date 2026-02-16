execute store success score $was_in_lobby var if entity @s[predicate=custom:team/lobby]
team join rocketriders.sort_000.blue
scoreboard players set @s was_on_arena_team 1
execute if score $was_in_lobby var matches 1 store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]
