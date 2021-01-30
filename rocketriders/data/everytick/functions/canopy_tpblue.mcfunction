##Iterates through all (relevant) Blue Canopies and teleports their owners to them

#Select unchecked Canopy and player
tag @e[tag=BluePlatform,limit=1,tag=!checkedTP,type=area_effect_cloud] add currentTP
execute as @a[team=Blue,tag=!checkedTP] if score @s playerUUID = @e[tag=BluePlatform,limit=1,tag=currentTP,type=area_effect_cloud] pearlOwnerUUID run tag @s add currentTP
execute as @p[team=Blue,tag=currentTP] run tag @s add canopyTP

#Reset the motion before/after teleporting (thanks to @dragonmaster95 for the suggestion!)
execute as @p[team=Blue,tag=currentTP] if entity @e[tag=BluePlatform,scores={PlatTime=1..3},limit=1,tag=currentTP,type=area_effect_cloud] run tp @s @s
execute as @p[team=Blue,tag=currentTP] if entity @e[tag=BluePlatform,scores={PlatTime=40..41},limit=1,tag=currentTP,type=area_effect_cloud] run tp @s @s

#Canopy forgets owner upon death
execute as @p[team=Blue,tag=currentTP,tag=probablyDied] at @s run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=area_effect_cloud] pearlOwnerUUID
execute as @p[team=Blue,tag=currentTP,tag=probablyDied] run tag @s remove canopyTP

#Canopy forgets owner if crossing in Rocket Residers
execute if entity @s[tag=Residers] as @p[team=Blue,tag=currentTP] at @s if entity @s[z=-36,dz=220] run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=area_effect_cloud] pearlOwnerUUID
execute if entity @s[tag=Residers] as @p[team=Blue,tag=currentTP] at @s if entity @s[z=-36,dz=220] run tag @s remove canopyTP

#Canopy forgets owner if shot by Nova Rocket
execute as @p[team=Blue,tag=currentTP,scores={novattach=1..}] at @s run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=area_effect_cloud] pearlOwnerUUID
execute as @p[team=Blue,tag=currentTP,scores={novattach=1..}] run tag @s remove canopyTP

#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
#(thanks to Red_Bones for the teleport command format!)
execute at @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=area_effect_cloud] as @p[team=Blue,tag=currentTP,tag=canopyTP] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] run tag @s add teleported
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect give @s slow_falling 2 100 true
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s unless predicate custom:canopy_nearblue if entity @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect give @s jump_boost 2 128 true
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s unless predicate custom:canopy_nearblue if entity @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect give @s slowness 2 255 true
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,scores={PlatTime=41..},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect clear @s slow_falling
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,scores={PlatTime=41..},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect clear @s slowness
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,scores={PlatTime=41..},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect clear @s jump_boost
execute as @p[team=Blue,tag=currentTP,tag=canopyTP] at @s if entity @e[tag=BluePlatform,scores={PlatTime=41..},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run tag @s remove canopyTP

#Deselect and remember checked Canopy and player
tag @p[team=Blue,tag=currentTP] add checkedTP
tag @a[team=Blue,tag=checkedTP] remove currentTP
tag @e[tag=BluePlatform,limit=1,tag=currentTP,type=area_effect_cloud] add checkedTP
tag @e[tag=BluePlatform,tag=checkedTP,type=area_effect_cloud] remove currentTP

#Recur until all teleports completed in this tick
execute if entity @e[tag=BluePlatform,tag=!checkedTP,type=area_effect_cloud] run function everytick:canopy_tpblue