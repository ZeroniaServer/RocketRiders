execute as @e[type=marker,tag=ICBMtracker] if score @s ICBMID = $tptracker ICBMID run tag @s add teleportPair
execute as @e[type=egg,tag=ICBM] if score @s ICBMID = $tptracker ICBMID run tag @s add teleportPair

execute as @e[type=marker,tag=ICBMtracker,tag=teleportPair] if entity @e[type=egg,tag=ICBM,tag=teleportPair] run tp @s @e[type=egg,tag=ICBM,tag=teleportPair,limit=1]
execute as @e[type=marker,tag=ICBMtracker,tag=teleportPair] if entity @e[type=egg,tag=ICBM,tag=teleportPair] run tag @s add teleported

execute as @e[type=marker,tag=ICBMtracker,tag=teleportPair] unless entity @e[type=egg,tag=ICBM,tag=teleportPair] run tag @s add ICBMTriggered
execute as @e[type=marker,tag=ICBMtracker,tag=teleportPair] if entity @e[type=egg,tag=ICBM,scores={ICBMtime=30..},tag=teleportPair] run tag @s add ICBMTriggered

#Next two commands disable ICBM near own portals
execute as @e[type=egg,tag=BlueICBM,tag=teleportPair] at @s if entity @s[x=-12,y=36,z=-80,dx=48,dy=25,dz=12] run kill @e[type=marker,tag=ICBMtracker,tag=teleportPair]
execute as @e[type=egg,tag=YellowICBM,tag=teleportPair] at @s if entity @s[x=-12,y=36,z=68,dx=48,dy=25,dz=12] run kill @e[type=marker,tag=ICBMtracker,tag=teleportPair]

execute as @e[type=egg,tag=ICBM,tag=teleportPair] at @s unless entity @e[type=marker,tag=ICBMtracker,tag=teleportPair] run kill @s

tag @e[type=marker,tag=ICBMtracker] remove teleportPair
tag @e[type=egg,tag=ICBM] remove teleportPair

scoreboard players add $tptracker ICBMID 1
execute as @e[type=egg,tag=ICBM] if score @s ICBMID = $tptracker ICBMID as @e[type=armor_stand,tag=Selection,limit=1] run function rr_swap:items/tptoicbm