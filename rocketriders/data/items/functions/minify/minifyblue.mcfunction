##Cuts down on redundant entries for missile spawns to reduce arena clear lag

#Copy all previously spawned missiles
data modify storage rocketriders:bmissilepos redundantX set from storage rocketriders:bmissilepos x
data modify storage rocketriders:bmissilepos redundantY set from storage rocketriders:bmissilepos y
data modify storage rocketriders:bmissilepos redundantZ set from storage rocketriders:bmissilepos z

#Remove first entry from copy so it doesn't consider itself a duplicate
data remove storage rocketriders:bmissilepos redundantX[0]
data remove storage rocketriders:bmissilepos redundantY[0]
data remove storage rocketriders:bmissilepos redundantZ[0]

#Set missile counts equal for loop condition (offset 1 so it doesn't consider itself)
scoreboard players operation $minifyblue bMissileCount = @e[x=0,type=armor_stand,tag=Selection,limit=1] bMissileCount
scoreboard players remove $minifyblue bMissileCount 1

#Start loop to scan for duplicate entries if another missile has been spawned
execute if score $minifyblue bMissileCount matches 1.. store result score $this redundantX run data get storage rocketriders:bmissilepos x[0] 100
execute if score $minifyblue bMissileCount matches 1.. store result score $this redundantY run data get storage rocketriders:bmissilepos y[0] 100
execute if score $minifyblue bMissileCount matches 1.. store result score $this redundantZ run data get storage rocketriders:bmissilepos z[0] 100
execute if score $minifyblue bMissileCount matches 1.. run function items:minify/minifyblueloop

#When loop is finished, if duplicate is present, remove last entry
execute if entity @s[tag=minify] run data remove storage rocketriders:bmissilepos x[0]
execute if entity @s[tag=minify] run data remove storage rocketriders:bmissilepos y[0]
execute if entity @s[tag=minify] run data remove storage rocketriders:bmissilepos z[0]
execute if entity @s[tag=minify] run scoreboard players remove @e[x=0,type=armor_stand,tag=Selection,limit=1] bMissileCount 1
tag @s remove minify

#Clean up
data remove storage rocketriders:bmissilepos redundantX
data remove storage rocketriders:bmissilepos redundantY
data remove storage rocketriders:bmissilepos redundantZ