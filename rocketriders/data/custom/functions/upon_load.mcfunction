execute unless entity @e[tag=Selection,type=armor_stand,tag=noPlayerCredits] run function lobby:credits/initialize
execute unless entity @e[tag=Selection,type=armor_stand,tag=noPlayerCredits] run function lobby:credits/devinitialize
execute unless entity @e[tag=Selection,type=armor_stand,tag=noPlayerCredits] run function lobby:credits/restart