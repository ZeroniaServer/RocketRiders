##Regifting achievement for Blue team
##Detects a Blue player damaging a player with a Yellow fireball
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=!realms,tag=!SMCustom] run scoreboard players add @s[team=Blue] regifts 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=!realms,tag=!SMCustom] run advancement grant @s[team=Blue,scores={regifts=5}] only achievements:rr_challenges/regifting
advancement revoke @s only achievements:rr_utility/blue_fireball_hit