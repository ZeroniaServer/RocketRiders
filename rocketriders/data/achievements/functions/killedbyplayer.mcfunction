##Just Give Me That Flag Already achievement
##Runs from a utility achievement for detecting when a player has been killed by an enemy player
execute if entity @e[type=armor_stand,tag=Selection,scores={servermode=0},tag=!realms,tag=!SMCustom] if entity @s[team=Blue,tag=onBlue] run advancement grant @s only achievements:rr_challenges/flag_already
execute if entity @e[type=armor_stand,tag=Selection,scores={servermode=0},tag=!realms,tag=!SMCustom] if entity @s[team=Yellow,tag=onYellow] run advancement grant @s only achievements:rr_challenges/flag_already
advancement revoke @s only achievements:rr_utility/killed_by_player