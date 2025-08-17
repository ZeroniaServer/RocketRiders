##Utility function for detecting if a player shoots another player in midair
##Triggered by the shoot_player advancement
advancement revoke @s only achievements:rr_utility/shoot_player
execute unless predicate rr:has_achievements run return fail

scoreboard players add @s[predicate=custom:fall_gravshot] gravShot 1
execute if entity @s[predicate=custom:fall_gravshot] run function achievements:gravitationalshootout