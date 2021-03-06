##Iterates through all (relevant) Blue Canopies and teleports their owners to them

#Select unchecked Canopy and player
tag @e[tag=BluePlatform,limit=1,tag=!checkedTP,type=marker] add currentTP
execute as @a[team=Blue,tag=!checkedTP] if score @s playerUUID = @e[tag=BluePlatform,limit=1,tag=currentTP,type=marker] pearlOwnerUUID run tag @s add currentTP
execute as @p[team=Blue,tag=currentTP] run tag @s add canopyTP

#Reset the motion before/after teleporting (thanks to @dragonmaster95 for the suggestion!)
execute as @p[team=Blue,tag=currentTP] if entity @e[tag=BluePlatform,scores={PlatTime=1..3},limit=1,tag=currentTP,type=marker] run tp @s @s
execute as @p[team=Blue,tag=currentTP] if entity @e[tag=BluePlatform,scores={PlatTime=40..41},limit=1,tag=currentTP,type=marker] run tp @s @s

#Canopy forgets owner upon death
execute as @p[team=Blue,tag=currentTP,tag=probablyDied] at @s run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=marker] pearlOwnerUUID
execute as @p[team=Blue,tag=currentTP,tag=probablyDied] run tag @s remove canopyTP

#Canopy forgets owner if crossing in Rocket Residers
execute if entity @s[tag=Residers] as @p[team=Blue,tag=currentTP] at @s if entity @s[z=-36,dz=220] run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=marker] pearlOwnerUUID
execute if entity @s[tag=Residers] as @p[team=Blue,tag=currentTP] at @s if entity @s[z=-36,dz=220] run tag @s remove canopyTP

#Canopy doesn't teleport more than once if shot by Nova Rocket
execute as @p[team=Blue,tag=currentTP,scores={novattach=1..15}] at @s run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=2..},limit=1,tag=currentTP,type=marker] pearlOwnerUUID
execute as @e[tag=BluePlatform,scores={PlatTime=2..},limit=1,tag=currentTP,type=marker] as @p[team=Blue,tag=currentTP,scores={novattach=1..15}] run tag @s remove canopyTP
#Canopy ends Nova effects if teleporting in first tick
execute as @e[tag=BluePlatform,scores={PlatTime=1},limit=1,tag=currentTP,type=marker] as @p[team=Blue,tag=currentTP,scores={novattach=1..15}] run scoreboard players set @s novattach 16

#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
#(thanks to Red_Bones for the teleport command format!)
execute at @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=marker] as @p[team=Blue,tag=currentTP,tag=canopyTP] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,sort=nearest,type=marker] run effect give @s slow_falling 2 100 true
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s unless predicate custom:canopy_nearblue if entity @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,sort=nearest,type=marker] run effect give @s jump_boost 2 128 true
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s unless predicate custom:canopy_nearblue if entity @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,sort=nearest,type=marker] run effect give @s slowness 2 255 true

#Remove canopy TP tag if teleportation period ends
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,scores={PlatTime=41..},limit=1,tag=currentTP,sort=nearest,type=marker] run tag @s remove canopyTP

#Remove canopy TP tag if Canopy dies prematurely
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,tag=killCanopy,limit=1,tag=currentTP,sort=nearest,type=marker] run tag @s remove canopyTP

#Remove effects if player loses canopy TP tag
execute as @p[team=Blue,tag=currentTP,tag=!canopyTP] run effect clear @s slow_falling
execute as @p[team=Blue,tag=currentTP,tag=!canopyTP] run effect clear @s slowness
execute as @p[team=Blue,tag=currentTP,tag=!canopyTP] run effect clear @s jump_boost

#Deselect and remember checked Canopy and player
tag @p[team=Blue,tag=currentTP] add checkedTP
tag @a[team=Blue,tag=checkedTP] remove currentTP
tag @e[tag=BluePlatform,limit=1,tag=currentTP,type=marker] add checkedTP
tag @e[tag=BluePlatform,tag=checkedTP,type=marker] remove currentTP

#Recur until all teleports completed in this tick
execute if entity @e[tag=BluePlatform,tag=!checkedTP,type=marker] run function everytick:canopy_tpblue