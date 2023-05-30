##Terminates the credits cycle.
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add noPlayerCredits
kill @e[predicate=custom:indimension,type=armor_stand,tag=creditsAS,tag=!devcycle]
kill @e[predicate=custom:indimension,type=area_effect_cloud,tag=CreditName]