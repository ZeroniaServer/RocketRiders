execute unless predicate game:gamemode_components/neutral_items if entity @s[predicate=custom:team/blue] run function custom:target_attackers {run:"tag @s[predicate=custom:team/yellow] add player_dies.killer"}
execute unless predicate game:gamemode_components/neutral_items if entity @s[predicate=custom:team/yellow] run function custom:target_attackers {run:"tag @s[predicate=custom:team/blue] add player_dies.killer"}
tag @s add player_dies.this
execute if predicate game:gamemode_components/neutral_items run function custom:target_attackers {run:"tag @s[predicate=custom:team/blue,tag=!player_dies.this] add player_dies.killer"}
tag @s remove player_dies.this
execute on attacker run tag @s remove player_dies.killer

scoreboard players add @a[tag=player_dies.killer] kills 1

tag @a remove player_dies.killer
