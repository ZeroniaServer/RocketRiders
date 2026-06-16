##Operator function - makes settings stop repeating forever
scoreboard players reset $extra_match_repetitions config
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
