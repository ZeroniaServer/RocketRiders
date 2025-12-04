##Terminates the credits cycle.
scoreboard players reset $show_extra_player_credits config
kill @e[x=0,type=armor_stand,tag=creditsAS,tag=!devcycle]
kill @e[x=0,type=area_effect_cloud,tag=CreditName]
