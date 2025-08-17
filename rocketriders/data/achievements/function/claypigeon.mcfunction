##Clay Pigeon achievement
##Utilizes an advancement for detecting when a levitating player is killed
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] run advancement grant @s only achievements:rr_challenges/pigeon
advancement revoke @s only achievements:rr_utility/kill_levitating_player