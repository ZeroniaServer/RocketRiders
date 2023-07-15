##Gives custom IDs to Vortex entity pairs recursively
execute if entity @s[scores={VortexID=0}] run scoreboard players add $highest VortexID 1
scoreboard players operation @s[scores={VortexID=0}] VortexID = $highest VortexID
execute if entity @s[tag=VortexYellow] align xyz positioned ~.5 ~0.3 ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["VortexItem","VortexItemYellow"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=VortexBlue] align xyz positioned ~.5 ~0.3 ~.5 run summon armor_stand ~ ~-2 ~ {Tags:["VortexItem","VortexItemBlue"],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}],DisabledSlots:4144959}
scoreboard players add @e[type=armor_stand,tag=VortexItem] VortexID 0
execute if entity @s[tag=VortexYellow] align xyz positioned ~.5 ~-1.7 ~.5 run scoreboard players operation @e[type=armor_stand,tag=VortexItemYellow,limit=1,sort=nearest,distance=..1,scores={VortexID=0}] VortexID = $highest VortexID
execute if entity @s[tag=VortexBlue] align xyz positioned ~.5 ~-1.7 ~.5 run scoreboard players operation @e[type=armor_stand,tag=VortexItemBlue,limit=1,sort=nearest,distance=..1,scores={VortexID=0}] VortexID = $highest VortexID
execute as @e[type=marker,tag=Vortex,scores={VortexID=0}] at @s run function everytick:vortexid