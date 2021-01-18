execute as @e[tag=ICBMtracker,type=area_effect_cloud] if score @s ICBMID = $tptracker ICBMID run tag @s add teleportPair
execute as @e[tag=ICBM,type=egg] if score @s ICBMID = $tptracker ICBMID run tag @s add teleportPair

execute as @e[tag=ICBMtracker,type=area_effect_cloud,tag=teleportPair] if entity @e[tag=ICBM,type=egg,tag=teleportPair] run tp @s @e[tag=ICBM,type=egg,tag=teleportPair,limit=1]
execute as @e[tag=ICBMtracker,type=area_effect_cloud,tag=teleportPair] if entity @e[tag=ICBM,type=egg,tag=teleportPair] run tag @s add teleported

execute as @e[tag=ICBMtracker,type=area_effect_cloud,tag=teleportPair] unless entity @e[tag=ICBM,type=egg,tag=teleportPair] run tag @s add ICBMTriggered
execute as @e[tag=ICBMtracker,type=area_effect_cloud,tag=teleportPair] if entity @e[tag=ICBM,scores={ICBMtime=30..},type=egg,tag=teleportPair] run tag @s add ICBMTriggered

#Next two commands disable ICBM near own portals
execute as @e[tag=BlueICBM,type=egg,tag=teleportPair] at @s if entity @s[x=-12,y=36,z=-80,dx=48,dy=25,dz=12] run kill @e[tag=ICBMtracker,type=area_effect_cloud,tag=teleportPair]
execute as @e[tag=YellowICBM,type=egg,tag=teleportPair] at @s if entity @s[x=-12,y=36,z=68,dx=48,dy=25,dz=12] run kill @e[tag=ICBMtracker,type=area_effect_cloud,tag=teleportPair]

execute as @e[tag=ICBM,type=egg,tag=teleportPair] at @s unless entity @e[tag=ICBMtracker,type=area_effect_cloud,tag=teleportPair] run kill @s

tag @e[tag=ICBMtracker,type=area_effect_cloud] remove teleportPair
tag @e[tag=ICBM,type=egg] remove teleportPair

scoreboard players add $tptracker ICBMID 1
execute as @e[tag=ICBM,type=egg] if score @s ICBMID = $tptracker ICBMID as @e[tag=Selection,type=armor_stand,limit=1] run function rr_swap:items/tptoicbm