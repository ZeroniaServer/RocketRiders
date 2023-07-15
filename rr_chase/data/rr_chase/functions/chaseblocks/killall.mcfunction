execute as @e[type=marker,tag=ChaseBlock] at @s run setblock ~ ~ ~ air
kill @e[type=marker,tag=ChaseBlock]
kill @e[type=armor_stand,tag=ChaseDisplay]
kill @e[type=area_effect_cloud,tag=ChaseText]

kill @e[type=armor_stand,tag=ChaseCrystal]
kill @e[type=end_crystal,tag=ChaseCrystal2]