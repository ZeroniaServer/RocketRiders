##Sub-RNG for Lightning Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngHur,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowHur","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngThun,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowBolt","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowHur,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowHur","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowBolt,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBolt","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[tag=surpriseYellow2,type=marker]
kill @e[tag=surpriseYellow1,type=marker]
kill @s