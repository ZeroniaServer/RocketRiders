scoreboard objectives add last_arena_team dummy
execute as @a[scores={was_on_arena_team=1..3}] run scoreboard players operation @s last_arena_team = @s was_on_arena_team
scoreboard objectives remove was_on_arena_team

data remove storage rocketriders:gamerules list
data remove storage rocketriders:items id_to_loot_table_map
