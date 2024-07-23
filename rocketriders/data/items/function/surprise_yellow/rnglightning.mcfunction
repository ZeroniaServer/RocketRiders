##Sub-RNG for Lightning Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngHur] run summon marker ~ ~ ~ {Tags:["surpriseYellowHur","surpriseYellow2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngThun] run summon marker ~ ~ ~ {Tags:["surpriseYellowBolt","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[type=marker,tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowHur] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowHur","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowBolt] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBolt","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[x=0,type=marker,tag=surpriseYellow2]
kill @e[x=0,type=marker,tag=surpriseYellow1]
kill @s