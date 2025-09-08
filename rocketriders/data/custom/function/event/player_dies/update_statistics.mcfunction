execute unless predicate game:gamemode_components/neutral_utility_colors if entity @s[team=Blue] run function custom:target_attackers {run:"tag @s[team=Yellow] add player_dies.killer"}
execute unless predicate game:gamemode_components/neutral_utility_colors if entity @s[team=Yellow] run function custom:target_attackers {run:"tag @s[team=Blue] add player_dies.killer"}
tag @s add player_dies.this
execute if predicate game:gamemode_components/neutral_utility_colors run function custom:target_attackers {run:"tag @s[team=Blue,tag=!player_dies.this] add player_dies.killer"}
tag @s remove player_dies.this
execute on attacker run tag @s remove player_dies.killer

scoreboard players add @a[tag=player_dies.killer] kills 1

tag @a remove player_dies.killer
