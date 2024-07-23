##Terminates the credits cycle.
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noPlayerCredits
kill @e[x=0,type=armor_stand,tag=creditsAS,tag=!devcycle]
kill @e[x=0,type=area_effect_cloud,tag=CreditName]