##Prepares Canopies to be cleared from global coordinate storage
#Summon new AEC entity
summon marker 0 0 0 {Tags:["Platform"]}

#Set position from global storage
execute as @e[x=0,type=marker,tag=Platform,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:canopypos x[0]
execute as @e[x=0,type=marker,tag=Platform,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:canopypos y[0]
execute as @e[x=0,type=marker,tag=Platform,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:canopypos z[0]

#Remove necessary blocks
execute as @e[x=0,type=marker,tag=Platform,limit=1] at @s run fill ~-3 ~ ~-3 ~3 ~ ~3 air replace #minecraft:leaves
execute as @e[x=0,type=marker,tag=Platform,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ air
kill @e[x=0,type=marker,tag=Platform,limit=1]

#Remove this set of coordinates in preparation for the next one
data remove storage rocketriders:canopypos x[0]
data remove storage rocketriders:canopypos y[0]
data remove storage rocketriders:canopypos z[0]

#Remove 1 from counter
scoreboard players remove $canopy_count global 1

#Recursion condition - as long as there's still coords stored, keep going
execute if score $canopy_count global matches 1.. run function arenaclear:preparecanopy

#End condition - clear arrays
execute if score $canopy_count global matches 0 run data remove storage rocketriders:canopypos x
execute if score $canopy_count global matches 0 run data remove storage rocketriders:canopypos y
execute if score $canopy_count global matches 0 run data remove storage rocketriders:canopypos z