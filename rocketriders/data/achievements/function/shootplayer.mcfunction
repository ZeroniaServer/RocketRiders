##Utility function for detecting if a player shoots another player in midair
##Triggered by the shoot_player advancement
advancement revoke @s only achievements:rr_utility/shoot_player
execute unless predicate game:achievements_can_be_awarded run return fail

scoreboard players add @s[predicate=custom:entity/is_falling_for_at_least_2_blocks] gravShot 1
execute if entity @s[predicate=custom:entity/is_falling_for_at_least_2_blocks] run function achievements:gravitationalshootout
