##Inaccurate but Committed achievement
##Uses predicates to detect players at the world border
execute if entity @s[gamemode=survival] at @s if predicate custom:location/touching_or_beyond_world_border if predicate custom:standing_on_missile run advancement grant @s only achievements:rr_challenges/committed