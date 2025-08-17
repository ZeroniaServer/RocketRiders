##You Shouldn't Bee Here achievement
##Utilizes an advancement for detecting when a player is killed by a bee
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] run advancement grant @s only achievements:rr_challenges/beehere
advancement revoke @s only achievements:rr_utility/bee_kill