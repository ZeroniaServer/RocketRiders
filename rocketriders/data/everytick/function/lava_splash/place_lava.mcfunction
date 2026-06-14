execute unless block ^ ^ ^0.5 #custom:nonsolid unless block ^0.5 ^ ^ #custom:nonsolid run return fail
execute unless entity @s[tag=lava_splash.can_break_portal] unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace run setblock ^0.5 ^ ^0.5 lava[level=8]
execute unless entity @s[tag=lava_splash.can_break_portal] if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace run setblock ^0.5 ^ ^0.5 lava
execute if entity @s[tag=lava_splash.can_break_portal] unless predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace_portal run setblock ^0.5 ^ ^0.5 lava[level=8]
execute if entity @s[tag=lava_splash.can_break_portal] if predicate game:modifiers/splash_streams/on if block ^0.5 ^ ^0.5 #custom:splashreplace_portal run setblock ^0.5 ^ ^0.5 lava
