##Sub-RNG for Heavy Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngAux] run summon marker ~ ~ ~ {Tags:["surpriseYellowAux","surpriseYellow2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngRift] run summon marker ~ ~ ~ {Tags:["surpriseYellowRift","surpriseYellow2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngJbuster] run summon marker ~ ~ ~ {Tags:["surpriseYellowJbuster","surpriseYellow2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngWar] run summon marker ~ ~ ~ {Tags:["surpriseYellowWar","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[type=marker,tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowAux] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowAux","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowRift] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowRift","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowJbuster] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowJug","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowWar] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowWar","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[x=0,type=marker,tag=surpriseYellow2]
kill @e[x=0,type=marker,tag=surpriseYellow1]
kill @s