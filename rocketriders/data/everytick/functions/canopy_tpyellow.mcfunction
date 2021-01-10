##Iterates through all (relevant) Yellow Canopies and teleports their owners to them

#Select unchecked Canopy and player
tag @e[tag=YellowPlatform,limit=1,tag=!checkedTP] add currentTP
execute as @a[team=Yellow,tag=!checkedTP] if score @s playerUUID = @e[tag=YellowPlatform,limit=1,tag=currentTP,type=area_effect_cloud] pearlOwnerUUID run tag @s add currentTP

#Reset the motion before teleporting (thanks to @dragonmaster95 for the suggestion!)
execute as @p[team=Yellow,tag=currentTP] run tp @s @s

#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
execute as @p[team=Yellow,tag=currentTP] at @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,tag=currentTP,type=area_effect_cloud] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute as @p[team=Yellow,tag=currentTP] at @s if entity @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect give @s slow_falling 2 100 true
execute as @p[team=Yellow,tag=currentTP] at @s unless predicate custom:canopy_nearyellow if entity @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect give @s jump_boost 2 128 true
execute as @p[team=Yellow,tag=currentTP] at @s unless predicate custom:canopy_nearyellow if entity @e[tag=YellowPlatform,scores={PlatTime=1},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect give @s slowness 2 255 true
execute as @p[team=Yellow,tag=currentTP] at @s if entity @e[tag=YellowPlatform,scores={PlatTime=41},limit=1,tag=currentTP,sort=nearest,type=area_effect_cloud] run effect clear @s slow_falling

#Deselect and remember checked Canopy and player
tag @p[team=Yellow,tag=currentTP] add checkedTP
tag @e[tag=YellowPlatform,limit=1,tag=currentTP,type=area_effect_cloud] add checkedTP
tag @e[tag=YellowPlatform,tag=checkedTP,type=area_effect_cloud] remove currentTP

#Recur until all teleports completed in this tick
execute if entity @e[tag=YellowPlatform,tag=!checkedTP,type=area_effect_cloud] run function everytick:canopy_tpyellow