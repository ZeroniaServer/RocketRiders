##Teleports item armor stand to Vortex area effect cloud
execute as @e[type=armor_stand,tag=VortexItem] if score @s VortexID = $count VortexID run tag @s add teleportPair
execute as @e[type=marker,tag=Vortex] if score @s VortexID = $count VortexID run tag @s add teleportPair

execute as @e[type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] at @e[type=marker,tag=Vortex,tag=teleportPair,limit=1] run tp @s ~ ~-2 ~
execute as @e[type=marker,tag=Vortex,tag=teleportPair,limit=1,scores={vortexBoom=1..}] run data merge entity @e[type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b}],DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] unless entity @e[type=marker,tag=Vortex,tag=teleportPair,limit=1] run kill @s
execute as @e[type=marker,tag=Vortex,tag=teleportPair,limit=1] unless entity @e[type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] at @s run function everytick:vortexid

tag @e[type=armor_stand,tag=VortexItem] remove teleportPair
tag @e[type=marker,tag=Vortex] remove teleportPair
scoreboard players add $count VortexID 1
execute if score $count VortexID <= $highest VortexID run function everytick:vortextp