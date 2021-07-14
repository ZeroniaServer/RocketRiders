##Inaccurate but Committed achievement
##Uses predicates to detect players at the world border
execute as @s[gamemode=survival] at @s unless predicate custom:insideborder if block ~ ~-1 ~ #custom:missileblocks run advancement grant @s only achievements:rr_challenges/committed