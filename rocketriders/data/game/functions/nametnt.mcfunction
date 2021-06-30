#Transfers this entity's name to nearby TNT (used for utilkill system)
data modify storage rocketriders:utilkill CustomName set from entity @s CustomName
execute as @e[tag=UtilKilled,type=tnt,distance=..6] run data modify entity @s CustomName set from storage rocketriders:utilkill CustomName
data remove storage rocketriders:utilkill CustomName