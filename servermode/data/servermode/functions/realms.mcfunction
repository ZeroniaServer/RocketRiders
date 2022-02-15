execute unless entity @e[type=armor_stand,tag=Selection,tag=SMActive] as @a run function achievements:reset
execute as @a run advancement grant @a only aaaaaaaatutorial:root
function servermode:default
tag @e[type=armor_stand,tag=Selection] add noYZELO
tag @e[type=armor_stand,tag=Selection] add realms