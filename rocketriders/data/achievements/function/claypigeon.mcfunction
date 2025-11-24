##Clay Pigeon achievement
##Utilizes an advancement for detecting when a levitating player is killed
execute if predicate game:achievements_can_be_awarded run advancement grant @s only achievements:rr_challenges/pigeon
advancement revoke @s only achievements:rr_utility/kill_levitating_player