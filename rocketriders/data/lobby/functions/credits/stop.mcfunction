##Terminates the credits cycle.
tag @e[type=armor_stand,tag=Selection] add noPlayerCredits
kill @e[type=armor_stand,tag=creditsAS,tag=!devcycle]
kill @e[type=area_effect_cloud,tag=CreditName]