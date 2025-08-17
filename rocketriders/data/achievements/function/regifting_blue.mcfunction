##Regifting achievement for Blue team
##Detects a Blue player damaging a player with a Yellow fireball
advancement revoke @s only achievements:rr_utility/blue_fireball_hit
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},predicate=!rr:realms] run return fail
scoreboard players add @s[team=Blue] regifts 1
advancement grant @s[team=Blue,scores={regifts=1..}] only achievements:rr_challenges/regifting 1
advancement grant @s[team=Blue,scores={regifts=2..}] only achievements:rr_challenges/regifting 2
advancement grant @s[team=Blue,scores={regifts=3..}] only achievements:rr_challenges/regifting 3
advancement grant @s[team=Blue,scores={regifts=4..}] only achievements:rr_challenges/regifting 4
advancement grant @s[team=Blue,scores={regifts=5..}] only achievements:rr_challenges/regifting 5