##Inaccurate but Committed achievement
##Uses predicates to detect players at the world border
execute if entity @s[gamemode=survival] at @s unless predicate custom:insideborder if predicate custom:on_missile run advancement grant @s only achievements:rr_challenges/committed