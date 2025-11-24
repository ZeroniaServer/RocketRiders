##Just Give Me That Flag Already achievement
##Runs from a utility achievement for detecting when a player has been killed by an enemy player
execute if predicate game:achievements_can_be_awarded if entity @s[predicate=custom:team/blue,tag=onBlue] run advancement grant @s only achievements:rr_challenges/flag_already
execute if predicate game:achievements_can_be_awarded if entity @s[predicate=custom:team/yellow,tag=onYellow] run advancement grant @s only achievements:rr_challenges/flag_already
advancement revoke @s only achievements:rr_utility/killed_by_player