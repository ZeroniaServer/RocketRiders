##Cuts down on redundant entries for missile spawns to reduce arena clear lag

#Copy all previously spawned missiles
data modify storage rocketriders:ymissilepos redundantX set from storage rocketriders:ymissilepos x
data modify storage rocketriders:ymissilepos redundantY set from storage rocketriders:ymissilepos y
data modify storage rocketriders:ymissilepos redundantZ set from storage rocketriders:ymissilepos z

#Remove first entry from copy so it doesn't consider itself a duplicate
data remove storage rocketriders:ymissilepos redundantX[0]
data remove storage rocketriders:ymissilepos redundantY[0]
data remove storage rocketriders:ymissilepos redundantZ[0]

#Set missile counts equal for loop condition (offset 1 so it doesn't consider itself)
scoreboard players operation $minifyyellow yMissileCount = @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] yMissileCount
scoreboard players remove $minifyyellow yMissileCount 1

#Start loop to scan for duplicate entries if another missile has been spawned
execute if score $minifyyellow yMissileCount matches 1.. store result score $this redundantX run data get storage rocketriders:ymissilepos x[0] 100
execute if score $minifyyellow yMissileCount matches 1.. store result score $this redundantY run data get storage rocketriders:ymissilepos y[0] 100
execute if score $minifyyellow yMissileCount matches 1.. store result score $this redundantZ run data get storage rocketriders:ymissilepos z[0] 100
execute if score $minifyyellow yMissileCount matches 1.. run function items:minify/minifyyellowloop

#When loop is finished, if duplicate is present, remove last entry
execute if entity @s[tag=minify] run data remove storage rocketriders:ymissilepos x[0]
execute if entity @s[tag=minify] run data remove storage rocketriders:ymissilepos y[0]
execute if entity @s[tag=minify] run data remove storage rocketriders:ymissilepos z[0]
execute if entity @s[tag=minify] run scoreboard players remove @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] yMissileCount 1
tag @s remove minify

#Clean up
data remove storage rocketriders:ymissilepos redundantX
data remove storage rocketriders:ymissilepos redundantY
data remove storage rocketriders:ymissilepos redundantZ