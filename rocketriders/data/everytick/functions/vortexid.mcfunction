#Gives custom IDs to Vortex entity pairs recursively
execute if entity @s[scores={VortexID=0}] run scoreboard players add $highest VortexID 1
scoreboard players operation @s[scores={VortexID=0}] VortexID = $highest VortexID
execute as @s[tag=VortexYellow] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["VortexItem","VortexItemYellow"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}
execute as @s[tag=VortexBlue] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["VortexItem","VortexItemBlue"],Invisible:1b,Marker:1b,NoGravity:1,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}]}
scoreboard players add @e[tag=VortexItem,type=armor_stand] VortexID 0
execute as @s[tag=VortexYellow] align xyz positioned ~.5 ~-2 ~.5 run scoreboard players operation @e[tag=VortexItemYellow,type=armor_stand,limit=1,sort=nearest,distance=..1,scores={VortexID=0}] VortexID = $highest VortexID
execute as @s[tag=VortexBlue] align xyz positioned ~.5 ~-2 ~.5 run scoreboard players operation @e[tag=VortexItemBlue,type=armor_stand,limit=1,sort=nearest,distance=..1,scores={VortexID=0}] VortexID = $highest VortexID
execute as @e[tag=Vortex,scores={VortexID=0},type=area_effect_cloud] at @s run function everytick:vortexid