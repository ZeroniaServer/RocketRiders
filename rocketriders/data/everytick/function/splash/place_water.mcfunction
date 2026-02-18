execute unless block ^ ^ ^0.5 #custom:nonsolid unless block ^0.5 ^ ^ #custom:nonsolid run return fail
execute unless predicate game:game_rules/snipe_portals/on unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace run setblock ^0.5 ^ ^0.5 water[level=8]
execute unless predicate game:game_rules/snipe_portals/on if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace run setblock ^0.5 ^ ^0.5 water
execute if predicate game:game_rules/snipe_portals/on unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace_portal run setblock ^0.5 ^ ^0.5 water[level=8]
execute if predicate game:game_rules/snipe_portals/on if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace_portal run setblock ^0.5 ^ ^0.5 water
