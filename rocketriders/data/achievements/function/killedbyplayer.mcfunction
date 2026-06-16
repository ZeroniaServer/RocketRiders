##Just Give Me That L Already achievement
##Runs from a utility achievement for detecting when a player has been killed by an enemy player
execute if predicate game:achievements_can_be_awarded if entity @s[predicate=custom:team/blue,predicate=custom:location/on_blue_base] run advancement grant @s only achievements:rr_challenges/flag_already
execute if predicate game:achievements_can_be_awarded if entity @s[predicate=custom:team/yellow,predicate=custom:location/on_yellow_base] run advancement grant @s only achievements:rr_challenges/flag_already
advancement revoke @s only achievements:rr_utility/killed_by_player
