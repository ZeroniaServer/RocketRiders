##Operator function - makes settings repeat forever
scoreboard players set $extra_match_repetitions config 2147483647
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
