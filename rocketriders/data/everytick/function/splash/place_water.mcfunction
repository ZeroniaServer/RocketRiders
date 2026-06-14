execute unless block ^ ^ ^0.5 #custom:non_solid unless block ^0.5 ^ ^ #custom:non_solid run return fail
execute unless entity @s[tag=splash.can_break_portal] unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable run setblock ^0.5 ^ ^0.5 water[level=8]
execute unless entity @s[tag=splash.can_break_portal] if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable run setblock ^0.5 ^ ^0.5 water
execute if entity @s[tag=splash.can_break_portal] unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable_snipe_portals run setblock ^0.5 ^ ^0.5 water[level=8]
execute if entity @s[tag=splash.can_break_portal] if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable_snipe_portals run setblock ^0.5 ^ ^0.5 water
