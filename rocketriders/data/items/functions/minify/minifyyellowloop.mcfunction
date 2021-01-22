##Recursive function to check for duplicate missile spawn positions

#Store current missile spawn position
execute store result score $current redundantX run data get storage rocketriders:ymissilepos redundantX[0] 100
execute store result score $current redundantY run data get storage rocketriders:ymissilepos redundantY[0] 100
execute store result score $current redundantZ run data get storage rocketriders:ymissilepos redundantZ[0] 100

#Check if positions are equal or missile is in same path
execute if score $this redundantX = $current redundantX if score $this redundantY = $current redundantY if score $this redundantZ <= $current redundantZ run tag @s add minify

#If above fails, remove current missile spawn position
execute as @s[tag=!minify] run data remove storage rocketriders:ymissilepos redundantX[0]
execute as @s[tag=!minify] run data remove storage rocketriders:ymissilepos redundantY[0]
execute as @s[tag=!minify] run data remove storage rocketriders:ymissilepos redundantZ[0]

#Recursion condition
scoreboard players remove $minifyyellow yMissileCount 1
execute as @s[tag=!minify] if score $minifyyellow yMissileCount matches 1.. run function items:minify/minifyyellowloop