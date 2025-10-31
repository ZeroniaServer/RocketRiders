##Regifting achievement for Blue team
##Detects a Blue player damaging a player with a Yellow fireball
advancement revoke @s only achievements:rr_utility/blue_fireball_hit
execute unless predicate rr:has_achievements run return fail
scoreboard players add @s[predicate=custom:team/blue] regifts 1
advancement grant @s[predicate=custom:team/blue,scores={regifts=1..}] only achievements:rr_challenges/regifting 1
advancement grant @s[predicate=custom:team/blue,scores={regifts=2..}] only achievements:rr_challenges/regifting 2
advancement grant @s[predicate=custom:team/blue,scores={regifts=3..}] only achievements:rr_challenges/regifting 3
advancement grant @s[predicate=custom:team/blue,scores={regifts=4..}] only achievements:rr_challenges/regifting 4
advancement grant @s[predicate=custom:team/blue,scores={regifts=5..}] only achievements:rr_challenges/regifting 5