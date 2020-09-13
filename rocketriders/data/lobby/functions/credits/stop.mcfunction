##Terminates the credits cycle.
tag @e[tag=Selection,type=armor_stand] add noPlayerCredits
kill @e[tag=creditsAS,tag=!devcycle,type=armor_stand]
kill @e[tag=CreditName,type=area_effect_cloud]