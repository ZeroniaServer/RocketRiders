##You Shouldn't Bee Here achievement
##Utilizes an advancement for detecting when a player is killed by a bee
execute if predicate game:achievements_can_be_awarded run advancement grant @s only achievements:rr_challenges/beehere
advancement revoke @s only achievements:rr_utility/bee_kill