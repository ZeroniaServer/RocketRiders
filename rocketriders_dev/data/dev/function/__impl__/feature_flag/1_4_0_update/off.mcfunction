scoreboard players reset $rotting config
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns

execute if entity @e[limit=1,x=0,type=armor_stand,tag=rr_classic] run function rr_classic:uninstall
