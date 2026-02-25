execute unless predicate game:gamemode_components/neutral_items if predicate custom:team/blue run function custom:target_attackers {run:"execute unless predicate custom:team/blue run tag @s add player_dies.killer"}
execute unless predicate game:gamemode_components/neutral_items if predicate custom:team/yellow run function custom:target_attackers {run:"execute unless predicate custom:team/yellow run tag @s add player_dies.killer"}
tag @s add player_dies.this
execute if predicate game:gamemode_components/neutral_items run function custom:target_attackers {run:"tag @s[tag=!player_dies.this] add player_dies.killer"}
tag @s remove player_dies.this

execute as @a[x=0,tag=player_dies.killer] at @s run function custom:event/player_kills_another_player/main

tag @a[x=0] remove player_dies.killer
