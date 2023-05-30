execute as @e[predicate=custom:indimension,type=marker,tag=ChaseBlock] at @s run setblock ~ ~ ~ air
kill @e[predicate=custom:indimension,type=marker,tag=ChaseBlock]
kill @e[predicate=custom:indimension,type=armor_stand,tag=ChaseDisplay]
kill @e[predicate=custom:indimension,type=area_effect_cloud,tag=ChaseText]

kill @e[predicate=custom:indimension,type=armor_stand,tag=ChaseCrystal]
kill @e[predicate=custom:indimension,type=end_crystal,tag=ChaseCrystal2]