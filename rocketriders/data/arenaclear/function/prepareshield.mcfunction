##Prepares Shields to be cleared from global coordinate storage
#Summon new AEC entity
summon marker 0 0 0 {Tags:["ClearShields"]}

#Set position from global storage
execute as @e[x=0,type=marker,tag=ClearShields,limit=1] run data modify entity @s Pos[0] set from storage rocketriders:shieldpos x[0]
execute as @e[x=0,type=marker,tag=ClearShields,limit=1] run data modify entity @s Pos[1] set from storage rocketriders:shieldpos y[0]
execute as @e[x=0,type=marker,tag=ClearShields,limit=1] run data modify entity @s Pos[2] set from storage rocketriders:shieldpos z[0]

#Remove necessary blocks
execute as @e[x=0,type=marker,tag=ClearShields,limit=1] at @s run fill ~-3 ~-3 ~ ~3 ~3 ~ air
kill @e[x=0,type=marker,tag=ClearShields,limit=1]

#Remove this set of coordinates in preparation for the next one
data remove storage rocketriders:shieldpos x[0]
data remove storage rocketriders:shieldpos y[0]
data remove storage rocketriders:shieldpos z[0]

#Remove 1 from counter
execute if score $shield_count global matches 1.. run scoreboard players remove $shield_count global 1

#Recursion condition - as long as there's still coords stored, keep going
execute if score $shield_count global matches 1.. run function arenaclear:prepareshield

#End condition - clear arrays
execute unless score $shield_count global matches 1.. run data remove storage rocketriders:shieldpos x
execute unless score $shield_count global matches 1.. run data remove storage rocketriders:shieldpos y
execute unless score $shield_count global matches 1.. run data remove storage rocketriders:shieldpos z
execute unless score $shield_count global matches 1.. run scoreboard players reset $shield_count global
