##Utility function for detecting if a player shoots another player in midair
##Triggered by the shoot_player advancement

scoreboard players add @s[scores={FallDistance=100..}] gravShot 1
advancement revoke @s only achievements:rr_utility/shoot_player