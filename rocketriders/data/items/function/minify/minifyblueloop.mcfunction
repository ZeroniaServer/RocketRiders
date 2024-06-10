##Recursive function to check for duplicate missile spawn positions

#Store current missile spawn position
execute store result score $current redundantX run data get storage rocketriders:bmissilepos redundantX[0] 100
execute store result score $current redundantY run data get storage rocketriders:bmissilepos redundantY[0] 100
execute store result score $current redundantZ run data get storage rocketriders:bmissilepos redundantZ[0] 100

#Check if positions are equal or missile is in same path
execute if score $this redundantX = $current redundantX if score $this redundantY = $current redundantY if score $this redundantZ >= $current redundantZ run tag @s add minify

#If above fails, remove current missile spawn position
execute if entity @s[tag=!minify] run data remove storage rocketriders:bmissilepos redundantX[0]
execute if entity @s[tag=!minify] run data remove storage rocketriders:bmissilepos redundantY[0]
execute if entity @s[tag=!minify] run data remove storage rocketriders:bmissilepos redundantZ[0]

#Recursion condition
scoreboard players remove $minifyblue bMissileCount 1
execute if entity @s[tag=!minify] if score $minifyblue bMissileCount matches 1.. run function items:minify/minifyblueloop