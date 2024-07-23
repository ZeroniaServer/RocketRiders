##Clay Pigeon achievement
##Utilizes an advancement for detecting when a levitating player is killed
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run advancement grant @s only achievements:rr_challenges/pigeon
advancement revoke @s only achievements:rr_utility/kill_levitating_player