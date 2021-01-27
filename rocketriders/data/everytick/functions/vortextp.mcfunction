#Teleports item armor stand to Vortex area effect cloud
execute as @e[tag=VortexItem,type=armor_stand] if score @s VortexID = $count VortexID run tag @s add teleportPair
execute as @e[tag=Vortex,type=area_effect_cloud] if score @s VortexID = $count VortexID run tag @s add teleportPair

execute as @e[tag=VortexItem,type=armor_stand,tag=teleportPair,limit=1] at @e[tag=Vortex,type=area_effect_cloud,tag=teleportPair,limit=1] run tp @s ~ ~-2 ~
execute as @e[tag=VortexItem,type=armor_stand,tag=teleportPair,limit=1] unless entity @e[tag=Vortex,type=area_effect_cloud,tag=teleportPair,limit=1] run kill @s
execute as @e[tag=Vortex,type=area_effect_cloud,tag=teleportPair,limit=1] unless entity @e[tag=VortexItem,type=armor_stand,tag=teleportPair,limit=1] at @s run function everytick:vortexid
tag @e[tag=VortexItem,type=armor_stand] remove teleportPair
tag @e[tag=Vortex,type=area_effect_cloud] remove teleportPair
scoreboard players add $count VortexID 1
execute if score $count VortexID <= $highest VortexID run function everytick:vortextp