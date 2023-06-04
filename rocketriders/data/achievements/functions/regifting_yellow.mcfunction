##Regifting achievement for Yellow team
##Detects a Yellow player damaging a player with a Blue fireball
execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={servermode=0},tag=!realms,tag=!SMCustom] run scoreboard players add @s[team=Yellow] regifts 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={servermode=0},tag=!realms,tag=!SMCustom] run advancement grant @s[team=Yellow,scores={regifts=5}] only achievements:rr_challenges/regifting
advancement revoke @s only achievements:rr_utility/yellow_fireball_hit