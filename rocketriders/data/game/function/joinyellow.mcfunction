##Utility function for joining Yellow team
tag @s[team=!Yellow] add JoinYellow
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noTeamBalance] run function game:joinwarn
tag @s add tryJoinYellow