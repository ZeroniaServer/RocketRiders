##Utility function for detecting if a player kills an enemy with a fireball
##Triggered by the fireball_kill advancement
execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={servermode=0},tag=!realms,tag=!SMCustom] run scoreboard players add @s fireballkill 1
advancement revoke @s only achievements:rr_utility/fireball_kill