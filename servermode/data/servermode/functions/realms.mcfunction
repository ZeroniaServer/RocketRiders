function servermode:default
tag @e[tag=Selection,type=armor_stand] add noYZELO
tag @e[tag=Selection,type=armor_stand] add noAchievements
tag @e[tag=Selection,type=armor_stand] add realms
execute as @a run function achievements:reset
advancement grant @a only tutorial:root