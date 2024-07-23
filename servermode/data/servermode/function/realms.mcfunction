execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] as @a[x=0] run function achievements:reset
execute as @a[x=0] run advancement grant @a[x=0] only 2811iaj1:root
function servermode:default
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add realms