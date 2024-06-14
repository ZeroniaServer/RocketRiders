#Initial teleport and position storage
execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000

#Teleport slightly forwards and store new position
tp @s ^ ^ ^0.001
execute store result score @s dx run data get entity @s Pos[0] 1000000
execute store result score @s dy run data get entity @s Pos[1] 1000000
execute store result score @s dz run data get entity @s Pos[2] 1000000

#Calculate differential
scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

tp @s ^ ^ ^0.5

#Store resultant motion
execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s dx
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get @s dy
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s dz
data modify entity @s acceleration_power set value 10d

playsound entity.blaze.shoot master @a[predicate=custom:indimension] ~ ~ ~