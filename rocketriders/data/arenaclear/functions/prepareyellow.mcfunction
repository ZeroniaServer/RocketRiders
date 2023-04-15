##Prepares Smart Arena Clear entities for yellow missiles from global coordinate storage
#Summon new AEC entity
summon marker 0 0 0 {Tags:[ArenaClearYellow]}

#Set position from global storage
execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearYellow,tag=!checked,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:ymissilepos x[0]
execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearYellow,tag=!checked,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:ymissilepos y[0]
execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearYellow,tag=!checked,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:ymissilepos z[0]

#Extra offset for superspeed clears
execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearYellow,tag=!checked,limit=1] at @s run tp @s ~2 ~-8 ~-3

#Mark AEC as checked (won't be affected on next iteration)
execute as @e[predicate=custom:indimension,type=marker,tag=ArenaClearYellow,tag=!checked,limit=1] run tag @s add checked

#Remove this set of coordinates in preparation for the next one
data remove storage rocketriders:ymissilepos x[0]
data remove storage rocketriders:ymissilepos y[0]
data remove storage rocketriders:ymissilepos z[0]

#Remove 1 from counter
scoreboard players remove @s[scores={yMissileCount=1..}] yMissileCount 1

#Recursion condition - as long as there's still missile coords stored, keep going
execute if entity @s[scores={yMissileCount=1..}] run function arenaclear:prepareyellow

#End condition - clear arrays
execute if entity @s[scores={yMissileCount=0}] run data remove storage rocketriders:ymissilepos x
execute if entity @s[scores={yMissileCount=0}] run data remove storage rocketriders:ymissilepos y
execute if entity @s[scores={yMissileCount=0}] run data remove storage rocketriders:ymissilepos z