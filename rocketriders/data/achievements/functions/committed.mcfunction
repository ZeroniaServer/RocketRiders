##Inaccurate but Committed achievement
##Uses predicates to detect players at the world border

execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s unless predicate custom:insideborder run advancement grant @s only achievements:rr_challenges/committed