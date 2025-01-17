##Utility function for detecting if a player shoots another player in midair
##Triggered by the shoot_player advancement
advancement revoke @s only achievements:rr_utility/shoot_player
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=!realms,tag=!SMCustom] run return fail

scoreboard players add @s[predicate=custom:fall_gravshot] gravShot 1
execute if entity @s[predicate=custom:fall_gravshot] run function achievements:gravitationalshootout