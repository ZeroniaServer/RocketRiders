execute as @e[type=armor_stand,tag=Selection,limit=1,scores={servermode=1}] run function arenaclear:forceareaclear
tag @e[type=armor_stand,tag=Selection,limit=1] remove forcenormal
tag @e[type=armor_stand,tag=Selection,limit=1] remove switchServermode