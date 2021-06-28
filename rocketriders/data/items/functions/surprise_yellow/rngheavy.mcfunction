##Sub-RNG for Heavy Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAux,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowAux","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngRift,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowRift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngJbuster,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowJbuster","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngWar,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowWar","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAux,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowAux","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowRift,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowRift","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowJbuster,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowJug","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowWar,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowWar","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[tag=surpriseYellow2,type=marker]
kill @e[tag=surpriseYellow1,type=marker]
kill @s