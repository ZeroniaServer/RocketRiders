#Teleports item armor stand to Vortex area effect cloud
execute as @e[tag=VortexItem,type=armor_stand] if score @s VortexID = $count VortexID run tag @s add teleportPair
execute as @e[tag=Vortex,type=marker] if score @s VortexID = $count VortexID run tag @s add teleportPair

execute as @e[tag=VortexItem,type=armor_stand,tag=teleportPair,limit=1] at @e[tag=Vortex,type=marker,tag=teleportPair,limit=1] run tp @s ~ ~-2 ~
execute as @e[tag=Vortex,type=marker,tag=teleportPair,limit=1,scores={vortexBoom=1..}] run data merge entity @e[tag=VortexItem,tag=teleportPair,limit=1,type=armor_stand] {ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}],DisabledSlots:4144959}
execute as @e[tag=VortexItem,type=armor_stand,tag=teleportPair,limit=1] unless entity @e[tag=Vortex,type=marker,tag=teleportPair,limit=1] run kill @s
execute as @e[tag=Vortex,type=marker,tag=teleportPair,limit=1] unless entity @e[tag=VortexItem,type=armor_stand,tag=teleportPair,limit=1] at @s run function everytick:vortexid

tag @e[tag=VortexItem,type=armor_stand] remove teleportPair
tag @e[tag=Vortex,type=marker] remove teleportPair
scoreboard players add $count VortexID 1
execute if score $count VortexID <= $highest VortexID run function everytick:vortextp