tag @s remove doing_facade_parkour
title @s actionbar ""
execute unless predicate game:game_started run tp @s[team=Blue] -95 202 60 0 0
execute unless predicate game:game_started run tp @s[team=Yellow] -95 202 96 180 0
