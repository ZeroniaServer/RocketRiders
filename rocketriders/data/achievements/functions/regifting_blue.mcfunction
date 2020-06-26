##Regifting achievement for Blue team
##Detects a Blue player damaging a player with a Yellow fireball

scoreboard players add @s[team=Blue] regifts 1
advancement grant @s[team=Blue,scores={regifts=5}] only achievements:rr_challenges/regifting
advancement revoke @s only achievements:rr_utility/blue_fireball_hit