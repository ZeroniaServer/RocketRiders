execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=SMActive] as @a[predicate=custom:indimension] run function achievements:reset
execute as @a[predicate=custom:indimension] run advancement grant @a[predicate=custom:indimension] only 2811iaj1:root
function servermode:default
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add noYZELO
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add realms