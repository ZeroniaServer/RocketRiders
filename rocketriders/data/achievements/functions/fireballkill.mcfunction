##Utility function for detecting if a player kills an enemy with a fireball
##Triggered by the fireball_kill advancement

scoreboard players add @s fireballkill 1
advancement revoke @s only achievements:rr_utility/fireball_kill