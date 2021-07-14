function servermode:default
tag @e[type=armor_stand,tag=Selection] add noYZELO
tag @e[type=armor_stand,tag=Selection] add realms
execute as @a run function achievements:reset
advancement grant @a only tutorial:root