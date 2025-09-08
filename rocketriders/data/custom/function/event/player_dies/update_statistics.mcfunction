execute unless predicate game:gamemode_components/neutral_utility_colors if entity @s[team=Blue] run function custom:target_attackers {run:"scoreboard players add @s[team=Yellow] statistics.kills 1"}
execute unless predicate game:gamemode_components/neutral_utility_colors if entity @s[team=Yellow] run function custom:target_attackers {run:"scoreboard players add @s[team=Blue] statistics.kills 1"}
tag @s add player_dies.this
execute if predicate game:gamemode_components/neutral_utility_colors run function custom:target_attackers {run:"scoreboard players add @s[team=Blue,tag=!player_dies.this] statistics.kills 1"}
tag @s remove player_dies.this
