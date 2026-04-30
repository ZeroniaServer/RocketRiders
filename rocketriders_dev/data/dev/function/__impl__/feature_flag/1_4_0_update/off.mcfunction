scoreboard players reset $rotting config
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns

tellraw @s "Classic mode UNINSTALL must be done manually"
