##Utility function for joining Blue team
tag @s[team=!Blue] add JoinBlue
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,predicate=!game:config/disable_balancing] run function game:joinwarn
tag @s add tryJoinBlue