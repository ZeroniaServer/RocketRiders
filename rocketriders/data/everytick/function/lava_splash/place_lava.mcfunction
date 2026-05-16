execute unless block ^ ^ ^0.5 #custom:non_solid unless block ^0.5 ^ ^ #custom:non_solid run return fail
execute unless predicate game:game_rules/snipe_portals/on unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable run setblock ^0.5 ^ ^0.5 lava[level=8]
execute unless predicate game:game_rules/snipe_portals/on if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable run setblock ^0.5 ^ ^0.5 lava
execute if predicate game:game_rules/snipe_portals/on unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable_snipe_portals run setblock ^0.5 ^ ^0.5 lava[level=8]
execute if predicate game:game_rules/snipe_portals/on if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splash_replaceable_snipe_portals run setblock ^0.5 ^ ^0.5 lava
