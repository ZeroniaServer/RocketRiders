execute as @a[x=0] run function achievements:reset
execute as @a[x=0] run advancement grant @a[x=0] only 2811iaj1:root
function servermode:default
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
scoreboard players set $realms global 1
