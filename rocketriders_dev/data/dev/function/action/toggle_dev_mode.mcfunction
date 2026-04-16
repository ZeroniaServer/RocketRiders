execute unless entity @s[predicate=custom:team/developer] run gamemode creative @s
execute unless entity @s[predicate=custom:team/developer] run return run function custom:player/team/join_developer
execute if entity @s[predicate=custom:team/developer] run gamemode adventure @s
execute if entity @s[predicate=custom:team/developer] run function custom:player/team/join_lobby
