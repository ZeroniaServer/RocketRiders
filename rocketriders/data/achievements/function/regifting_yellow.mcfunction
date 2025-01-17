##Regifting achievement for Yellow team
##Detects a Yellow player damaging a player with a Blue fireball
advancement revoke @s only achievements:rr_utility/yellow_fireball_hit
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=!realms,tag=!SMCustom] run return fail
scoreboard players add @s[team=Yellow] regifts 1
advancement grant @s[team=Yellow,scores={regifts=1..}] only achievements:rr_challenges/regifting 1
advancement grant @s[team=Yellow,scores={regifts=2..}] only achievements:rr_challenges/regifting 2
advancement grant @s[team=Yellow,scores={regifts=3..}] only achievements:rr_challenges/regifting 3
advancement grant @s[team=Yellow,scores={regifts=4..}] only achievements:rr_challenges/regifting 4
advancement grant @s[team=Yellow,scores={regifts=5..}] only achievements:rr_challenges/regifting 5