execute as @e[x=0,type=marker,tag=ChaseBlock] at @s run setblock ~ ~ ~ air
kill @e[x=0,type=marker,tag=ChaseBlock]
kill @e[x=0,type=armor_stand,tag=ChaseDisplay]
kill @e[x=0,type=area_effect_cloud,tag=ChaseText]

kill @e[x=0,type=armor_stand,tag=ChaseCrystal]
kill @e[x=0,type=end_crystal,tag=ChaseCrystal2]