##Teleports item armor stand to Vortex area effect cloud
execute as @e[x=0,type=armor_stand,tag=VortexItem] if score @s VortexID = $count VortexID run tag @s add teleportPair
execute as @e[x=0,type=marker,tag=Vortex] if score @s VortexID = $count VortexID run tag @s add teleportPair

execute as @e[x=0,type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] at @e[x=0,type=marker,tag=Vortex,tag=teleportPair,limit=1] run tp @s ~ ~-1.7 ~
execute as @e[x=0,type=marker,tag=Vortex,tag=teleportPair,limit=1,scores={vortexBoom=1..}] run data merge entity @e[x=0,type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:ender_eye",count:1}],DisabledSlots:4144959}
execute as @e[x=0,type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] unless entity @e[x=0,type=marker,tag=Vortex,tag=teleportPair,limit=1] run kill @s
execute as @e[x=0,type=marker,tag=Vortex,tag=teleportPair,limit=1] unless entity @e[x=0,type=armor_stand,tag=VortexItem,tag=teleportPair,limit=1] at @s run function everytick:vortexid

tag @e[x=0,type=armor_stand,tag=VortexItem] remove teleportPair
tag @e[x=0,type=marker,tag=Vortex] remove teleportPair
scoreboard players add $count VortexID 1
execute if score $count VortexID <= $highest VortexID run function everytick:vortextp