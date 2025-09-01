execute at @s run function rr_chase:game/glassregen
execute at @s run tp @s ~ 63 ~1
## TODO insensitive to hardcore
execute unless predicate game:modifiers/hardcore/on at @s if predicate rr_chase:regenz run tp @s ~-1 63 -66
execute if predicate game:modifiers/hardcore/on at @s if predicate rr_chase:regenz_hardcore run tp @s ~-1 63 -66
execute at @s if predicate rr_chase:regenx run tp @s 38 63 -66